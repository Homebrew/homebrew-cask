# How To Contribute

So you want to contribute to the project. **THIS IS GREAT NEWS!**  Seriously. We're all pretty happy about this. Here’s how to get started:

* [Getting Set Up To Contribute](#getting-set-up-to-contribute)
* [Updating a Cask](#updating-a-cask)
* [Adding a Cask](#adding-a-cask)
* [Testing Your New Cask](#testing-your-new-cask)
* [Finding a Home For Your Cask](#finding-a-home-for-your-cask)
* [Submitting Your Changes](#submitting-your-changes)
* [Cleaning up](#cleaning-up)
* [Reporting Bugs](README.md#reporting-bugs)

## Getting Set Up To Contribute

1. Fork the repository in GitHub with the `Fork` button.

2. Add your GitHub fork as a remote for your homebrew-cask Tap:

```bash
$ github_user='<my-github-username>'
$ cd "$(brew --repository)"/Library/Taps/caskroom/homebrew-cask
$ git remote add "$github_user" "https://github.com/$github_user/homebrew-cask"
```


## Updating a Cask

Notice an application that's out-of-date in Homebrew Cask? In most cases, it's very simple to update it. We have a [script](https://github.com/vitorgalvao/tiny-scripts/blob/master/cask-repair) that will ask for the new version number, and take care of updating the Cask file and submitting a pull request to us.

```bash
# install and setup script - only needed once
brew install vitorgalvao/tiny-scripts/cask-repair
cask-repair --help

# use to update <outdated-cask>
outdated_cask='<the-cask-i-want-to-update>'
cd "$(brew --repository)/Library/Taps/caskroom/homebrew-cask/Casks"
cask-repair --pull origin --push $github_user $outdated-cask
```

If there is a more complicated change, or there is a case where `cask-repair` fails, you can also follow the steps in [Adding a Cask](#adding-a-cask) to do the same thing manually. 

## Adding a Cask

Making a new Cask is easy: a Cask is a small Ruby file.

### Examples

Here’s a Cask for `shuttle` as an example.

```ruby
cask 'shuttle' do
  version '1.2.5'
  sha256 '7df182f506b80011222c0cdd470be76e0376f38e331f3fafbb6af9add3578023'

  url "https://github.com/fitztrev/shuttle/releases/download/v#{version}/Shuttle.zip"
  appcast 'https://github.com/fitztrev/shuttle/releases.atom',
          :sha256 => '9f66dbb98f73f69f4a1759d4bdb8d2552060d599548427740e239ca45185fe5c'
  name 'Shuttle'
  homepage 'https://fitztrev.github.io/shuttle/'
  license :mit

  app 'Shuttle.app'

  zap :delete => '~/.shuttle.json'
end
```


And here is one for `gateblu`. Note that it has an unversioned download (the download `url` does not contain the version number, unlike the example above). It also suppresses the checksum with `sha256 :no_check` (necessary since the checksum will change when a new distribution is made available). This combination of `version :latest` and `sha256 :no_check` is currently the preferred mechanism when a versioned download URL is not available. Also note the comment above `url`, which is needed when [the url and homepage hostnames differ](doc/CASK_LANGUAGE_REFERENCE.md#when-url-and-homepage-hostnames-differ-add-a-comment):

```ruby
cask 'gateblu' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3-us-west-2.amazonaws.com/gateblu/gateblu-ui/latest/Gateblu.dmg'
  name 'Gateblu'
  homepage 'https://gateblu.octoblu.com'
  license :mit

  pkg 'Gateblu Installer.pkg'

  uninstall :pkgutil => 'com.octoblu.*',
            :delete => '/Applications/Gateblu.app'
end
```

#### `version` methods

In the examples above, when possible the `url` stanza uses `#{version}` ([string interpolation](https://en.wikipedia.org/wiki/String_interpolation#Ruby)) to create a Cask that only needs `version` and `sha256` changes when updated. This can be taken further, when needed, with [ruby String methods](http://ruby-doc.org/core/String.html). For example:

Instead of

```ruby
version '1.2.3'
url 'http://example.com/file-version-123.dmg'
```

We can use

```ruby
version '1.2.3'
url "http://example.com/file-version-#{version.delete('.')}.dmg"
```

We can also leverage the power of regular expressions. So instead of

```ruby
version '1.2.3build4'
url 'http://example.com/1.2.3/file-version-1.2.3build4.dmg'
```

We can use

```ruby
version '1.2.3build4'
url "http://example.com/#{version.sub(%r{build\d+}, '')}/file-version-#{version}.dmg"
```

That can become hard to read, however. Since many of these changes are common, we provide a number of helpers to clearly interpret otherwise obtuse cases:

| Method                   | Input              | Output             |
|--------------------------|--------------------|--------------------|
| `major`                  | `1.2.3-a45,ccdd88` | `1`                |
| `minor`                  | `1.2.3-a45,ccdd88` | `2`                |
| `patch`                  | `1.2.3-a45,ccdd88` | `3`                |
| `major_minor`            | `1.2.3-a45,ccdd88` | `1.2`              |
| `major_minor_patch`      | `1.2.3-a45,ccdd88` | `1.2.3`            |
| `before_comma`           | `1.2.3-a45,ccdd88` | `1.2.3-a45`        |
| `after_comma`            | `1.2.3-a45,ccdd88` | `ccdd88`           |
| `dots_to_hyphens`        | `1.2.3-a45,ccdd88` | `1-2-3-a45,ccdd88` |
| `no_dots`                | `1.2.3-a45,ccdd88` | `123-a45,ccdd88`   |

Similar to `dots_to_hyphens`, we provide all logical permutations of `{dots,hyphens,underscores,slashes}_to_{dots,hyphens,underscores,slashes}`. The same applies to `no_dots` in the form of `no_{dots,hyphens,underscores,slashes}`, with an extra `no_dividers` that applies all of those at once.

Finally, there are `before_colon` and `after_colon` that act like their `comma` counterparts. These four are extra special to allow for otherwise complex cases, and should be used sparingly. There should be no more than one of `,` and `:` per `version`. Use `,` first, and `:` only if absolutely necessary.

### Generating a Token for the Cask

The Cask **token** is the mnemonic string people will use to interact with the Cask via `brew cask install`, `brew cask search`, etc. The name of the Cask **file** is simply the token with the extension `.rb` appended.

The easiest way to generate a token for a Cask is to run this command:

```bash
$ "$(brew --repository)/Library/Taps/caskroom/homebrew-cask/developer/bin/generate_cask_token" '/full/path/to/new/software.app'
```

If the software you wish to Cask is not installed, or does not have an associated App bundle, just give the full proper name of the software instead of a pathname:

```bash
$ "$(brew --repository)/Library/Taps/caskroom/homebrew-cask/developer/bin/generate_cask_token" 'Google Chrome'
```

If the `generate_cask_token` script does not work for you, see [Cask Token Details](#cask-token-details).

### The `brew cask create` Command

Once you know the token, create your Cask with the handy-dandy `brew cask create` command.

```bash
$ brew cask create my-new-cask
```

This will open `$EDITOR` with a template for your new Cask, to be stored in the file `my-new-cask.rb`. Running the `create` command above will get you a template that looks like this:

```ruby
cask 'my-new-cask' do
  version ''
  sha256 ''

  url ''
  name ''
  homepage ''
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app ''
end
```

### Cask Stanzas

Fill in the following stanzas for your Cask:

| name               | value       |
| ------------------ | ----------- |
| `version`          | application version; give the value `:latest` if only an unversioned download is available
| `sha256`           | SHA-256 checksum of the file downloaded from `url`, calculated by the command `shasum -a 256 <file>`. Can be suppressed by using the special value `:no_check`. (see [Checksum Stanza Details](doc/CASK_LANGUAGE_REFERENCE.md#checksum-stanza-details))
| `url`              | URL to the `.dmg`/`.zip`/`.tgz` file that contains the application. A [comment](doc/CASK_LANGUAGE_REFERENCE.md#when-url-and-homepage-hostnames-differ-add-a-comment) should be added if the hostnames in the `url` and `homepage` stanzas differ (see [URL Stanza Details](doc/CASK_LANGUAGE_REFERENCE.md#url-stanza-details))
| `name`             | the full and proper name defined by the vendor, and any useful alternate names (see [Name Stanza Details](doc/CASK_LANGUAGE_REFERENCE.md#name-stanza-details))
| `homepage`         | application homepage; used for the `brew cask home` command
| `license`          | a symbol identifying the license for the application. Valid category licenses include `:oss`, `:closed`, and `:unknown`. It is OK to leave as `:unknown`. (see [License Stanza Details](doc/CASK_LANGUAGE_REFERENCE.md#license-stanza-details))
| `app`              | relative path to an `.app` bundle that should be linked into the `~/Applications` folder on installation (see [App Stanza Details](doc/CASK_LANGUAGE_REFERENCE.md#app-stanza-details))

Other commonly-used stanzas are:

| name               | value       |
| ------------------ | ----------- |
| `appcast`          | a URL providing an appcast feed to find updates for this Cask. (see [Appcast Stanza Details](#appcast-stanza-details))
| `pkg`              | relative path to a `.pkg` file containing the distribution (see [Pkg Stanza Details](doc/CASK_LANGUAGE_REFERENCE.md#pkg-stanza-details))
| `caveats`          | a string or Ruby block providing the user with Cask-specific information at install time (see [Caveats Stanza Details](doc/CASK_LANGUAGE_REFERENCE.md#caveats-stanza-details))
| `uninstall`        | procedures to uninstall a Cask. Optional unless the `pkg` stanza is used. (see [Uninstall Stanza Details](doc/CASK_LANGUAGE_REFERENCE.md#uninstall-stanza-details))

Additional `artifact` stanzas you might need for special use-cases can be found [here](doc/CASK_LANGUAGE_REFERENCE.md#at-least-one-artifact-stanza-is-also-required). Even more special-use stanzas are listed at [Optional Stanzas](doc/CASK_LANGUAGE_REFERENCE.md#optional-stanzas) and [Legacy Stanzas](doc/CASK_LANGUAGE_REFERENCE.md#legacy-stanzas).

### Stanza order

Having a common order for stanzas makes Casks easier to update and parse. Below is the the complete stanza sequence (no Cask will have all stanzas). The empty lines shown here are also important, as they help to visually delineate information.

```
version
sha256

url
appcast,
  :sha256 # shown here as it is required with `appcast`
name
homepage
license
gpg, :key_id # on same line, since first part is typically small

auto_updates
accessibility_access
conflicts_with
depends_on
container

suite
app
pkg
installer
binary
colorpicker
font
input_method
internet_plugin
prefpane
qlplugin
screen_saver
service
audio_unit_plugin
vst_plugin
artifact, :target # :target shown here as is required with `artifact`
stage_only

preflight

postflight

uninstall_preflight

uninstall_postflight

uninstall

zap

caveats
```

Note that every stanza that has additional parameters (`:symbols` after a `,`) shall have them on separate lines, one per line, in alphabetical order. Exceptions are `gpg` and `:target` (when not applied to `url`) which typically consist of short lines.

### SourceForge/OSDN URLs

SourceForge and OSDN (formerly SourceForge.JP) projects are common ways to distribute binaries, but they provide many different styles of URLs to get to the goods.

We prefer URLs of this format:

```
http://downloads.sourceforge.net/sourceforge/$PROJECTNAME/$FILENAME.$EXT
```

Or, if it’s from [OSDN](https://osdn.jp/):

```
http://$STRING.osdn.jp/$PROJECTNAME/$RELEASEID/$FILENAME.$EXT
```

`$STRING` is typically of the form `dl` or `$USER.dl`.

If these formats are not available, and the application is Mac-exclusive (otherwise a command-line download defaults to the Windows version) we prefer the use of this format:

```
http://sourceforge.net/projects/$PROJECTNAME/files/latest/download
```

### Personal Hosting Such as Dropbox

URLs from dropbox.com or cl.ly/cloudapp.com are not readily distinguishable as being controlled by the original software vendor. These URLs should be used only when given as such on the official project website.

Also make sure to give the URL for the binary download itself, rather than a preview page. (See <https://www.dropbox.com/help/201/en>.)

### Some Providers Block Command-line Downloads

Some hosting providers actively block command-line HTTP clients (example: FossHub). Such URLs cannot be used in Casks.

### Vendor URLs Are Preferred

When possible, it is best to use a download URL from the original developer or vendor, rather than an aggregator such as `macupdate.com`.

### Cask Token Details

If a token conflicts with an already-existing Cask, authors should manually make the new token unique by prepending the vendor name. Example: [unison.rb](../master/Casks/unison.rb) and [panic-unison.rb](../master/Casks/panic-unison.rb).

If possible, avoid creating tokens which differ only by the placement of hyphens.

To generate a token manually, or to learn about exceptions for unusual cases, see [cask_token_reference.md](doc/cask_token_reference.md).

### Archives With Subfolders

When a downloaded archive expands to a subfolder, the subfolder name must be included in the `app` value.

Example:

1. Texmaker is downloaded to the file `TexmakerMacosxLion.zip`.
2. `TexmakerMacosxLion.zip` unzips to a folder called `TexmakerMacosxLion`.
3. The folder `TexmakerMacosxLion` contains the application `texmaker.app`.
4. So, the `app` stanza should include the subfolder as a relative path:

  ```ruby
  app 'TexmakerMacosxLion/texmaker.app'
  ```

### Style guide

All Casks and code in the homebrew-cask project should be indented using two spaces (never tabs). There should not be any extraneous comments - the only comments that should be used are the ones explicitly defined in the [Cask Language Reference](doc/CASK_LANGUAGE_REFERENCE.md).

If relevant, you may also use string manipulations to improve the maintainability of your Cask. (See [`version` methods](#version-methods)) Here’s an example from `Lynkeos.app`:

```ruby
cask 'lynkeos' do
  version '2.10'
  sha256 'bd27055c51575555a1c8fe546cf057c57c0e45ea5d252510847277734dc550a4'

  url "http://downloads.sourceforge.net/project/lynkeos/lynkeos/#{version}/Lynkeos-App-#{version.dots_to_hyphens}.zip"
  name 'Lynkeos'
  homepage 'http://lynkeos.sourceforge.net/'
  license :gpl

  app "Lynkeos-App-#{version.dots_to_hyphens}/Lynkeos.app"
end
```

## Testing Your New Cask

Give it a shot with `brew cask install my-new-cask`

Did it install? If something went wrong, `brew cask uninstall my-new-cask` and edit your Cask to fix it.

If everything looks good, you’ll also want to make sure your Cask passes audit with:

```bash
brew cask audit my-new-cask --download
```

You should also check stylistic details with the [`rubocop-cask`](https://github.com/caskroom/rubocop-cask) gem:

```bash
cd "$(brew --repository)/Library/Taps/caskroom/homebrew-cask"
bundle install
bundle exec rubocop --auto-correct Casks/my-new-cask.rb
```

Keep in mind all of these checks will be made when you submit your PR, so by doing them in advance you’re saving everyone a lot of time and trouble.

If your application and homebrew-cask do not work well together, feel free to [file an issue](https://github.com/caskroom/homebrew-cask#reporting-bugs) after checking out open issues.

## Finding a Home For Your Cask

We maintain separate Taps for different types of binaries. Our nomenclature is:

+ **Stable**: The latest version provided by the developer defined by them as such.
+ **Beta, Development, Unstable**: Subsequent versions to **stable**, yet incomplete and under development, aiming to eventually become the new **stable**.
+ **Nightly**: Constantly up-to-date versions of the current development state.
+ **Legacy**: Any **stable** version that is not the most recent.
+ **Alternative**: Alternative edition of an existing app, by the same vendor (developer editions, community editions, pro editions, …).
+ **Regional, Localized**: Any version that isn’t the US English one, when that exists.
+ **Trial**: Date-limited version that stops working entirely after it expires, requiring payment to lift the limitation.
+ **Freemium**: Gratis version that works indefinitely but with limitations that can be removed by paying.
+ **Fork**: An alternate version of an existing project, with a based-on but modified source and binary.
+ **Unofficial**: An *allegedly* unmodified compiled binary, by a third-party, of a binary that has no existing build by the owner of the source code.
+ **Vendorless**: A binary distributed without an official website, like a forum posting.
+ **Walled**: When the download URL is both behind a login/registration form and from a host that differs from the homepage.

### Stable Versions

Stable versions live in the main repository at [caskroom/homebrew-cask](https://github.com/caskroom/homebrew-cask). They should run on the latest release of OS X or the previous point release (in 2015, for example, that meant El Capitan and Yosemite).

### But There Is No Stable Version!

When an App is only available as beta, development, or unstable versions, or in cases where such a version is the general standard, then said version can go into the main repo.

### Beta, Unstable, Development, Nightly, Legacy, or Alternative Versions

When an App’s principal stable version already exists in the main repo, alternative versions should be submitted to [caskroom/homebrew-versions](https://github.com/caskroom/homebrew-versions).

### Regional and Localized

When an App exists in more than one language or has different regional editions, the US English one belongs in the main repo, and all the others in [caskroom/homebrew-versions](https://github.com/caskroom/homebrew-versions). When not already part of the name of the app, a [regional identifier](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) and a [language code](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes) are to be appended to the Cask’s token (both when available, or just the appropriate one when not).

### Trial and Freemium Versions

Before submitting a trial, make sure it can be made into a full working version without the need to be redownloaded. If an App provides a trial but the only way to buy the full version is via the Mac App Store, it does not belong in any of the official repos. Freemium versions are fine.

### Forks and Apps with conflicting names

Forks should have the vendor’s name as a prefix on the cask’s file name and token. For unrelated apps that share a name, the most popular one (usually the one already present) stays unprefixed. Since this can be subjective, if you disagree with a decision open an issue and make your case to the maintainers.

### Unofficial, Vendorless, and Walled Builds

Please submit these to [caskroom/homebrew-unofficial](http://github.com/caskroom/homebrew-unofficial). If you’ve made an unofficial build and need a place to host it, contact our sister project [alehouse](https://github.com/alehouse).

### Fonts

Font casks live in the [caskroom/homebrew-fonts](https://github.com/caskroom/homebrew-fonts) repository. See the font repo [CONTRIBUTING.md](https://github.com/caskroom/homebrew-fonts/blob/master/CONTRIBUTING.md)
for details.

## Submitting Your Changes

Hop into your Tap and check to make sure your new Cask is there:

```bash
$ cd "$(brew --repository)"/Library/Taps/caskroom/homebrew-cask
$ git status
# On branch master
# Untracked files:
#   (use "git add <file>..." to include in what will be committed)
#
#       Casks/my-new-cask.rb
```

So far, so good. Now make a feature branch that you’ll use in your pull request:

```bash
$ git checkout -b my-new-cask
Switched to a new branch 'my-new-cask'
```

Stage your Cask with `git add Casks/my-new-cask.rb`. You can view the changes that are to be committed with `git diff --cached`.

Commit your changes with `git commit -v`.

### Commit Messages

For any git project, some good rules for commit messages are:

* The first line is commit summary, 50 characters or less,
* Followed by an empty line
* Followed by an explanation of the commit, wrapped to 72 characters.

See [a note about git commit messages](http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html) for more.

The first line of a commit message becomes the **title** of a pull request on GitHub, like the subject line of an email. Including the key info in the first line will help us respond faster to your pull.

For Cask commits in the homebrew-cask project, we like to include the Application name, version number (or `:latest`), and purpose of the commit in the first line.

Examples of good, clear commit summaries:

* `Add Transmission.app v1.0`
* `Upgrade Transmission.app to v2.82`
* `Fix checksum in Transmission.app Cask`
* `Add CodeBox Latest`

Examples of difficult, unclear commit summaries:

* `Upgrade to v2.82`
* `Checksum was bad`

### Pushing

Push your changes to your GitHub account:

```bash
$ github_user='<my-github-username>'
$ git push "$github_user" my-new-cask
```

If you are using [GitHub two-factor authentication](https://help.github.com/articles/about-two-factor-authentication/) and set your remote repository as HTTPS you will need to set up a personal access token and use that instead of your password. Further information [here](https://help.github.com/articles/https-cloning-errors/#provide-access-token-if-2fa-enabled).

### Squashing

If your pull request has multiple commits which revise the same lines of code, or if you make some changes after comments from one of the maintainers, it is better to [squash](http://davidwalsh.name/squash-commits-git) those commits together into one logical unit.

But you don’t always have to squash — it is fine for a pull request to contain multiple commits when there is a logical reason for the separation.

### Filing a Pull Request on GitHub

Now go to the [`homebrew-cask` GitHub repository](https://github.com/caskroom/homebrew-cask). GitHub will often show your `my-new-cask` branch with a handy button to `Compare & pull request`. Otherwise, click the `New pull request` button and choose to `compare across forks`. The base fork should be `caskroom/homebrew-cask @ master`, and the head fork should be `my-github-username/homebrew-cask @ my-new-cask`. You can also add any further comments to your pull request at this stage.

Congratulations! You are done now, and your Cask should be pulled in or otherwise noticed in a while. If a maintainer suggests some changes, just make them on the `my-new-cask` branch locally, [squash](CONTRIBUTING.md#squashing), and [push](CONTRIBUTING.md#pushing).

## Cleaning up

After your Pull Request is submitted, you should get yourself back onto `master`, so that `brew update` will pull down new Casks properly.

```bash
cd "$(brew --repository)"/Library/Taps/caskroom/homebrew-cask
git checkout master
```

Neat and tidy!

# <3 THANK YOU! <3
