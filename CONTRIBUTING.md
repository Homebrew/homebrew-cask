# How To Contribute

So you want to contribute to the project. **THIS IS GREAT NEWS!**  Seriously. We're all pretty happy about this. Here’s how to get started:

* [Getting Set Up To Contribute](#getting-set-up-to-contribute)
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

## Adding a Cask

Making a Cask is easy: a Cask is a small Ruby file.

### Examples

Here’s a Cask for `Alfred.app` as an example. Note that you may repeat the `app` stanza as many times as you need, to define multiple apps:

```ruby
cask :v1 => 'alfred' do
  version '2.3_264'
  sha256 'a32565cdb1673f4071593d4cc9e1c26bc884218b62fef8abc450daa47ba8fa92'

  url 'https://cachefly.alfredapp.com/Alfred_2.3_264.zip'
  name 'Alfred'
  homepage 'http://www.alfredapp.com/'
  license :freemium

  app 'Alfred 2.app'
  app 'Alfred 2.app/Contents/Preferences/Alfred Preferences.app'
end
```

Here is another Cask for `Unity.pkg`:

```ruby
cask :v1 => 'unity' do
  version '4.5.4'
  sha256 '6fb72bfacf78df072559dd9a024a9d47e49b5717c8f17d53f05e2fc74a721876'

  url 'http://netstorage.unity3d.com/unity/unity-4.5.4.dmg'
  name 'Unity'
  name 'Unity3D'
  homepage 'http://unity3d.com/unity/'
  license :commercial

  pkg 'Unity.pkg'

  uninstall :pkgutil => 'com.unity3d.*'
end
```

And here is one for `Firefox.app`. Note that it has an unversioned download (the download `url` does not contain the version number, unlike the example above). It also suppresses the checksum with `sha256 :no_check` (necessary since the checksum will change when a new distribution is made available). This combination of `version :latest` and `sha256 :no_check` is currently the preferred mechanism when a versioned download URL is not available:

```ruby
cask :v1 => 'firefox' do
  version :latest
  sha256 :no_check

  url 'https://download.mozilla.org/?product=firefox-latest&os=osx&lang=en-US'
  name 'Firefox'
  homepage 'https://www.mozilla.org/en-US/firefox/'
  license :mpl

  app 'Firefox.app'
end
```

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
cask :v1 => 'my-new-cask' do
  version ''
  sha256 ''

  url ''
  name ''
  homepage ''
  license :unknown

  app ''
end
```

### Cask Stanzas

Fill in the following stanzas for your Cask:

| name               | value       |
| ------------------ | ----------- |
| `version`          | application version; give the value `:latest` if an unversioned download is available
| `sha256`           | SHA-256 checksum of the file downloaded from `url`, calculated by the command `shasum -a 256 <file>`. Can be suppressed by using the special value `:no_check`. (see also [Checksum Stanza Details](doc/CASK_LANGUAGE_REFERENCE.md#checksum-stanza-details))
| `url`              | URL to the `.dmg`/`.zip`/`.tgz` file that contains the application. A [comment](doc/CASK_LANGUAGE_REFERENCE.md#when-url-and-homepage-hostnames-differ-add-a-comment) should be added if the hostnames in the `url` and `homepage` stanzas differ (see also [URL Stanza Details](doc/CASK_LANGUAGE_REFERENCE.md#url-stanza-details))
| `name`             | the full and proper name defined by the vendor, and any useful alternate names (see also [Name Stanza Details](doc/CASK_LANGUAGE_REFERENCE.md#name-stanza-details))
| `homepage`         | application homepage; used for the `brew cask home` command
| `license`          | a symbol identifying the license for the application. Valid category licenses include `:oss`, `:closed`, and `:unknown`. It is OK to leave as `:unknown`. (see also [License Stanza Details](doc/CASK_LANGUAGE_REFERENCE.md#license-stanza-details))
| `app`              | relative path to an `.app` bundle that should be linked into the `~/Applications` folder on installation (see also [App Stanza Details](doc/CASK_LANGUAGE_REFERENCE.md#app-stanza-details))

Other commonly-used stanzas are:

| name               | value       |
| ------------------ | ----------- |
| `pkg`              | relative path to a `.pkg` file containing the distribution (see also [Pkg Stanza Details](doc/CASK_LANGUAGE_REFERENCE.md#pkg-stanza-details))
| `uninstall`        | procedures to uninstall a Cask. Optional unless the `pkg` stanza is used. (see also [Uninstall Stanza Details](doc/CASK_LANGUAGE_REFERENCE.md#uninstall-stanza-details))

Additional stanzas you might need for special use-cases:

| name                   | value       |
| ---------------------- | ----------- |
| `prefpane`             | relative path to a preference pane that should be linked into the `~/Library/PreferencePanes` folder on installation
| `colorpicker`          | relative path to a ColorPicker plugin that should be linked into the `~/Library/ColorPickers` folder on installation
| `qlplugin`             | relative path to a QuickLook plugin that should be linked into the `~/Library/QuickLook` folder on installation
| `font`                 | relative path to a font that should be linked into the `~/Library/Fonts` folder on installation
| `service`              | relative path to a service that should be linked into the `~/Library/Services` folder on installation
| `binary`               | relative path to a binary that should be linked into the `/usr/local/bin` folder on installation
| `input_method`         | relative path to a input method that should be linked into the `~/Library/Input Methods` folder on installation
| `screen_saver`         | relative path to a Screen Saver that should be linked into the `~/Library/Screen Savers` folder on installation
| `suite`                | relative path to a containing directory that should be linked into the `~/Applications` folder on installation
| `container :nested =>` | relative path to an inner container that must be extracted before moving on with the installation; this allows us to support dmg inside tar, zip inside dmg, etc.
| `caveats`              | a string or Ruby block providing the user with Cask-specific information at install time (see also [Caveats Stanza Details](doc/CASK_LANGUAGE_REFERENCE.md#caveats-stanza-details))

Even more special-use stanzas are listed at [Optional Stanzas](doc/CASK_LANGUAGE_REFERENCE.md#optional-stanzas) and [Legacy Stanzas](doc/CASK_LANGUAGE_REFERENCE.md#legacy-stanzas).

### SourceForge URLs

SourceForge projects are a common way to distribute binaries, but they provide many different styles of URLs to get to the goods.

We prefer URLs of this format:

```
http://downloads.sourceforge.net/sourceforge/$PROJECTNAME/$FILENAME.$EXT
```

Or, if it’s from [SourceForge.JP](http://sourceforge.jp/):

```
http://$STRING.sourceforge.jp/$PROJECTNAME/$RELEASEID/$FILENAME.$EXT
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

When possible, it is best to use a download URL from the original developer or vendor, rather than an aggregator such as macupdate.com.

### Cask Token Details

If a token conflicts with an already-existing Cask, authors should manually make the new token unique by prepending the vendor name. Example: [unison.rb](../master/Casks/unison.rb) and [panic-unison.rb](../master/Casks/panic-unison.rb).

If possible, avoid creating tokens which differ only by the placement of
hyphens.

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

All Casks and code in the homebrew-cask project should be indented using two spaces (never tabs).

If relevant, you may also use string manipulations to improve the maintainability of your Cask. Here’s an example from `Lynkeos.app`:

```ruby
cask :v1 => 'lynkeos' do
  version '2.10'
  sha256 'bd27055c51575555a1c8fe546cf057c57c0e45ea5d252510847277734dc550a4'

  url "http://downloads.sourceforge.net/project/lynkeos/lynkeos/#{version}/Lynkeos-App-#{version.gsub('.', '-')}.zip"
  name 'Lynkeos'
  homepage 'http://lynkeos.sourceforge.net/'
  license :gpl

  app "Lynkeos-App-#{version.gsub('.', '-')}/Lynkeos.app"
end
```

## Testing Your New Cask

Give it a shot with `brew cask install my-new-cask`

Did it install? If something went wrong, `brew cask uninstall my-new-cask` and edit your Cask to fix it.

If everything looks good, you’ll also want to make sure your Cask passes audit with:

```bash
brew cask audit my-new-cask --download
```

You should also check stylistic details with the [`rubocop`](https://github.com/bbatsov/rubocop) gem:

```bash
cd "$(brew --repository)/Library/Taps/caskroom/homebrew-cask"
bundle install
bundle exec rubocop Casks/my-new-cask.rb
```

Keep in mind all of these checks will be made when you submit your PR, so by doing them in advance you’re saving everyone a lot of time and trouble.

If your application and homebrew-cask do not work well together, feel free to [file an issue](https://github.com/caskroom/homebrew-cask/issues) after checking out open issues.

## Finding a Home For Your Cask

We maintain separate Taps for different types of binaries. Our nomenclature is:

+ **Stable**: The latest version provided by the developer defined by them as such.
+ **Beta, Development, Unstable**: Subsequent versions to **stable**, yet incomplete and under development, aiming to eventually become the new **stable**.
+ **Nightly**: Constantly up-to-date versions of the current development state.
+ **Legacy**: Any **stable** version that is not the most recent.
+ **Trial**: Date-limited version that stops working entirely after it expires, requiring payment to lift the limitation.
+ **Freemium**: Gratis version that works indefinitely but with limitations that can be removed by paying.
+ **Fork**: An alternate version of an existing project, with a based-on but modified source and binary.
+ **Unofficial**: An *allegedly* unmodified compiled binary, by a third-party, of a binary that has no existing build by the owner of the source code.
+ **Vendorless**: A binary distributed without an official website, like a forum posting.
+ **Walled**: When the download URL is both behind a login/registration form and from a host that differs from the homepage.

### Stable Versions

Stable versions live in the main repository at [caskroom/homebrew-cask](https://github.com/caskroom/homebrew-cask). They should run on the latest release of OS X or the previous point release (in 2014, for example, that meant Mavericks and Yosemite).

### But There Is No Stable Version!

When an App is only available as beta, development, or unstable versions, or in cases where such a version is the general standard, then said version can go into the main repo.

### Beta, Unstable, Development, Nightly, or Legacy Versions

When an App’s stable version already exists in the main repo, alternate versions can be submitted to [caskroom/homebrew-versions](https://github.com/caskroom/homebrew-versions).

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

If you are using [GitHub two-factor authentication](https://github.com/blog/1614-two-factor-authentication) and set your remote repository as HTTPS you will need to set up a personal access token and use that instead your password. See more on https://help.github.com/articles/https-cloning-errors#provide-access-token-if-2fa-enabled

### Filing a Pull Request on GitHub

Now go to *your* GitHub repository at https://github.com/my-github-username/homebrew-cask, switch branch to your topic branch and click the `Pull Request` button. You can then add further comments to your pull request.

Congratulations! You are done now, and your Cask should be pulled in or otherwise noticed in a while.

### Squashing

If your pull request has multiple commits which revise the same lines of code, it is better to [squash](http://davidwalsh.name/squash-commits-git) those commits together into one logical unit.

But you don’t always have to squash — it is fine for a pull request to contain multiple commits when there is a logical reason for the separation.

## Cleaning up

After your Pull Request is away, you might want to get yourself back onto `master`, so that `brew update` will pull down new Casks properly.

```bash
cd "$(brew --repository)"/Library/Taps/caskroom/homebrew-cask
git checkout master
```

Neat and tidy!

# <3 THANK YOU! <3
