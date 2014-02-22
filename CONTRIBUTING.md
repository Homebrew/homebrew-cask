# How To Contribute

So you want to contribute to the project. **THIS IS GREAT NEWS!**  Seriously. We're
all pretty happy about this.  Here's how to get started:

 * [Getting Set Up To Contribute](#getting-set-up-to-contribute)
 * [Adding a Cask](#adding-a-cask)
 * [Testing Your New Cask](#testing-your-new-cask)
 * [Finding a Home For Your Cask](#finding-a-home-for-your-cask)
 * [Submitting Your Changes](#submitting-your-changes)
 * [Cleaning up](#cleaning-up)


## Getting Set Up To Contribute

1. Fork the repository in GitHub with the 'Fork' button
2. Add your GitHub fork as a remote for your homebrew-cask Tap

```bash
$ github_user='<my-github-username>'
$ cd "$(brew --prefix)"/Library/Taps/phinze-cask
$ git remote add "$github_user" "https://github.com/$github_user/homebrew-cask"
```


## Adding a Cask

Making a Cask is easy: a Cask is a small Ruby file.

Here's a Cask for `Alfred.app` as an example.  Note that you may repeat
the `link` stanza as many times as you need, to create multiple links:

```ruby
class Alfred < Cask
  url 'http://cachefly.alfredapp.com/Alfred_2.1.1_227.zip'
  homepage 'http://www.alfredapp.com/'
  version '2.1.1_227'
  sha256 'd19fe7441c6741bf663521e561b842f35707b1e83de21ca195aa033cade66d1b'
  link 'Alfred 2.app'
  link 'Alfred 2.app/Contents/Preferences/Alfred Preferences.app'
end
```

Here is another Cask for `Vagrant.pkg`:

```ruby
class Vagrant < Cask
  url 'https://dl.bintray.com/mitchellh/vagrant/Vagrant-1.4.3.dmg'
  homepage 'http://www.vagrantup.com'
  version '1.4.3'
  sha256 'e7ff13b01d3766829f3a0c325c1973d15b589fe1a892cf7f857da283a2cbaed1'
  install 'Vagrant.pkg'
  uninstall :script => { :executable => 'uninstall.tool', :input => %w[Yes] }
end
```

To get started, use the handy dandy `brew cask create` command.

```bash
$ brew cask create my-new-cask
```

This will open `$EDITOR` with a template for your new Cask. Note that the
convention is that hyphens in the name indicate casing in the class name, so
the Cask name 'my-new-cask' becomes `MyNewCask` stored in `my-new-cask.rb`. So
running the above command will get you a template that looks like this:

```ruby
class MyNewCask < Cask
  url ''
  homepage ''
  version ''
  sha256 ''
  link ''
end
```

Fill in the following stanzas for your Cask:

| field              | value       |
| ------------------ | ----------- |
| __cask metadata__  | information about the Cask (required)
| `url`              | URL to the `.dmg`/`.zip`/`.tgz` file that contains the application (see also [URL Stanza Details](doc/THE_CASK_LANGUAGE.md#url-stanza-details))
| `homepage`         | application homepage; used for the `brew cask home` command
| `version`          | application version; give value of `'latest'` if versioned downloads are not offered
| `sha256`           | SHA-256 checksum of the file downloaded from `url`, calculated by the command `shasum -a 256 <file>`.  Can be omitted on unversioned downloads with `no_checksum`. (see also [Checksum Stanza Details](doc/THE_CASK_LANGUAGE.md#checksum-stanza-details))
| __artifact info__  | information about artifacts inside the Cask (can be specified multiple times)
| `link`             | relative path to a file that should be linked into the `Applications` folder on installation (see also [Link Stanza Details](doc/THE_CASK_LANGUAGE.md#link-stanza-details))
| `install`          | relative path to `pkg` that should be run to install the application (see also [Install Stanza Details](doc/THE_CASK_LANGUAGE.md#install-stanza-details))
| `uninstall`        | indicates what commands/scripts must be run to uninstall a pkg-based application (see also [Uninstall Stanza Details](doc/THE_CASK_LANGUAGE.md#uninstall-stanza-details))

Additional stanzas you might need for special use-cases:

| field              | value       |
| ------------------ | ----------- |
| `prefpane`         | relative path to a preference pane that should be linked into the `~/Library/PreferencePanes` folder on installation
| `colorpicker`      | relative path to a ColorPicker plugin that should be linked into the `~/Library/ColorPickers` folder on installation
| `qlplugin`         | relative path to a QuickLook plugin that should be linked into the `~/Library/QuickLook` folder on installation
| `font`             | relative path to a font that should be linked into the `~/Library/Fonts` folder on installation
| `widget`           | relative path to a widget that should be linked into the `~/Library/Widgets` folder on installation (ALPHA: DOES NOT WORK YET)
| `service`          | relative path to a service that should be linked into the `~/Library/Services` folder on installation
| `binary`           | relative path to a binary that should be linked into the `/usr/local/bin` folder on installation
| `input_method`     | relative path to a input method that should be linked into the `~/Library/Input Methods` folder on installation
| `screen_saver`     | relative path to a Screen Saver that should be linked into the `~/Library/Screen Savers` folder on installation
| `nested_container` | relative path to an inner container that must be extracted before moving on with the installation; this allows us to support dmg inside tar, zip inside dmg, etc.
| `depends_on_formula` | a list of Homebrew Formulae upon which this Cask depends
| `caveats`          | a string or Ruby block providing the user with Cask-specific information at install time (see also [Caveats Details](doc/THE_CASK_LANGUAGE.md#caveats-details))
| `after_install`    | a Ruby block containing postflight install operations
| `after_uninstall`  | a Ruby block containing postflight uninstall operations


### SourceForge URLs

SourceForge projects are a common way to distribute binaries, but they
provide many different styles of URLs to get to the goods.

We prefer URLs of this format:

```
http://sourceforge.net/projects/$PROJECTNAME/files/latest/download
```

This lets the project maintainers choose the best URL for download.

If the "latest" URL does not point to a valid file for a Mac app, then we
fall back to this format:

```
http://downloads.sourceforge.net/sourceforge/$PROJECTNAME/$FILENAME.$EXT
```

### Naming Casks

We try to maintain consistent naming so everything stays clean and predictable.

#### Find the Canonical Name of the Author's Distribution

##### Canonical Names of Apps

  * Start with the exact name of the Application bundle as it appears on disk,
    such as `Google Chrome.app`
  * Remove `.app` from the end
  * Translate the name into English if necessary
  * Pay attention to details, for example: `"Git Hub" != "git_hub" != "GitHub"`
  * If the result of that process is something unhelpful, such as `Macintosh Installer`,
    then just create the best name you can, based on the author's web page.

##### Canonical Names of `pkg`-based Installers

  * The Canonical Name of a `pkg` may be more tricky to determine than that
    of an App.  If so, just create the best name you can, based on the
    author's web page.

#### Cask Name

A "Cask name" is the primary identifier for a package in our project. It's
the string people will use to interact with this Cask on their system.

To get from the App's canonical name to the Cask name:

  * convert all letters to lower case
  * hyphens stay hyphens
  * spaces become hyphens
  * digits stay digits
  * a leading digit gets spelled out into English: `1password` becomes `onepassword`

Casks are stored in a Ruby file matching their name.

#### Cask Class

Casks are implemented as Ruby classes, so a Cask's "class" needs to be a
valid Ruby class name.

When going from a Cask's __name__ to its __class name__:

  * UpperCamelCased
  * wherever a hyphen occurs in the __Cask name__, the __class__ has a case change
  * invalid characters are replaced with English word equivalents


#### Cask Naming Examples

These illustrate most of the naming rules:

Canonical App Name | Cask Name           | Cask Class
-------------------|---------------------|------------------------
Audio Hijack Pro   | `audio-hijack-pro`  | `AudioHijackPro`
VLC                | `vlc`               | `Vlc`
BetterTouchTool    | `bettertouchtool`   | `Bettertouchtool`
iTerm2             | `iterm2`            | `Iterm2`
Akai LPK25 Editor  | `akai-lpk25-editor` | `AkaiLpk25Editor`
Sublime Text 3     | `sublime-text3`     | `SublimeText3`
1Password          | `1password`         | `Onepassword`

### Archives With Subfolders

When a downloaded archive expands to a subfolder, the subfolder name must be
included in the `link` value.

Example:

 * Texmaker is downloaded to the file `TexmakerMacosxLion.zip`.
 * `TexmakerMacosxLion.zip` unzips to a folder called `TexmakerMacosxLion`.
 * The folder `TexmakerMacosxLion` contains the application `texmaker.app`.
 * So, the `link` stanza should include the subfolder as a relative path:

	```ruby
	link 'TexmakerMacosxLion/texmaker.app'
	```

### Indenting

All Casks and code in the homebrew-cask project should be indented using two
spaces (never tabs).


## Testing Your New Cask

Give it a shot with `brew cask install my-new-cask`

Did it install? If something went wrong, `brew cask uninstall my-new-cask` and
edit your Cask to fix it.

If everything looks good, you'll also want to make sure your Cask passes audit
with

`brew cask audit my-new-cask --download`

If your application and homebrew-cask do not work well together, feel free to
[file an issue](https://github.com/phinze/homebrew-cask/issues) after checking
out open issues.


## Finding a Home For Your Cask

We maintain separate Taps for different types of binaries.

### Latest Stable Versions

Latest stable versions live in the main repository at [phinze/homebrew-cask](https://github.com/phinze/homebrew-cask).
Software in the main repo should run on the latest release of OS X or the previous
point release (currently: Mavericks and Mountain Lion).

### But There Is No Stable Version!

When an App is only available as a Beta, or in cases where a "Beta" has become
the general standard, then an "unstable" version can go into the main repo.

### Unstable, Development, or Legacy Versions

When an App already exists in the main repo, alternate versions can be Casked
and submitted to [caskroom/homebrew-versions](https://github.com/caskroom/homebrew-versions).
Nightly builds always go in [caskroom/homebrew-versions](https://github.com/caskroom/homebrew-versions).

### Unofficial Builds

When an App developer does not offer a binary download, please submit the
Cask to [caskroom/homebrew-unofficial](http://github.com/caskroom/homebrew-unofficial).
For a location to host unofficial builds, contact our sister project [alehouse](https://github.com/alehouse).

### Fonts

Font Casks live in the [caskroom/homebrew-fonts](https://github.com/caskroom/homebrew-fonts)
repository.  See the font repo [CONTRIBUTING.md](https://github.com/caskroom/homebrew-fonts/blob/master/CONTRIBUTING.md)
for details.


## Submitting Your Changes

Hop into your Tap and check to make sure your new Cask is there:

```bash
$ cd "$(brew --prefix)"/Library/Taps/phinze-cask
$ git status
# On branch master
# Untracked files:
#   (use "git add <file>..." to include in what will be committed)
#
#       Casks/my-new-cask.rb
```

So far, so good. Now make a feature branch that you'll use in your pull
request:

```bash
$ git checkout -b my-new-cask
Switched to a new branch 'my-new-cask'
```

Stage your Cask with `git add Casks/my-new-cask.rb`. You can view the changes
that are to be committed with `git diff --cached`.

Commit your changes with `git commit -v`.

### Commit Messages

For any git project, some good rules for commit messages are

 * the first line is commit summary, 50 characters or less,
 * followed by an empty line
 * followed by an explanation of the commit, wrapped to 72 characters.

See [a note about git commit messages](http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html)
for more.

The first line of a commit message becomes the **title** of a pull
request on GitHub, like the subject line of an email.  Including
the key info in the first line will help us respond faster to
your pull.

For Cask commits in the homebrew-cask project, we like to include
the Application name, version number, and purpose of the commit
in the first line.

Examples of good, clear commit summaries:

* `Add Transmission.app v1.0`
* `Upgrade Transmission.app to v2.82`
* `Fix checksum in Transmission.app Cask`

Examples of difficult, unclear commit summaries:

* `Upgrade to v2.82`
* `Checksum was bad`

### Pushing

Push your changes to your GitHub account:

```bash
$ github_user='<my-github-username>'
$ git push "$github_user" my-new-cask
```

### Filing a Pull Request on GitHub

Now go to *your* GitHub repository at
https://github.com/my-github-username/homebrew-cask, switch branch to your
topic branch and click the 'Pull Request' button. You can then add further
comments to your pull request.

Congratulations! You are done now, and your Cask should be pulled in or
otherwise noticed in a while.

### Squashing

If your pull request has multiple commits which revise the same lines of
code, it is better to [squash](http://davidwalsh.name/squash-commits-git) those commits together into one logical unit.

But you don't always have to squash -- it is fine for a pull request to
contain multiple commits when there is a logical reason for the separation.


## Cleaning up

After your Pull Request is away, you might want to get yourself back onto
`master`, so that `brew update` will pull down new Casks properly.

```bash
cd "$(brew --prefix)"/Library/Taps/phinze-cask
git checkout master
```

Neat and tidy!


## Working On homebrew-cask Itself

If you'd like to hack on the Ruby code in the project itself, please
see [HACKING.md](doc/HACKING.md).

# <3 THANK YOU! <3
