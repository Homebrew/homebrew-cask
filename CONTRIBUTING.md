# How to Contribute

So you want to contribute to the project. **THIS IS GREAT NEWS!**  Seriously. We're
all pretty happy about this.

## Getting set up to contribute

1. Fork the repository in GitHub with the 'Fork' button
2. Add your GitHub fork as a remote for your homebrew-cask Tap

```bash
github_user='<my-github-username>'
cd $(brew --prefix)/Library/Taps/phinze-cask
git remote add $github_user https://github.com/$github_user/homebrew-cask
```

## Adding a Cask

Making a Cask is easy: a Cask is a small Ruby file.

Here's a Cask for Alfred.app as an example:

```ruby
class Alfred < Cask
  url 'http://cachefly.alfredapp.com/Alfred_2.0.6_203.zip'
  homepage 'http://www.alfredapp.com/'
  version '2.0.6_203'
  sha1 'fcbcc1c0076bbd118c825e0e3253246244e65396'
  link 'Alfred 2.app', 'Alfred Preferences.app'
end
```

Here is another Cask for Vagrant.pkg

```ruby
class Vagrant < Cask
  url 'http://files.vagrantup.com/packages/22b76517d6ccd4ef232a4b4ecbaa276aff8037b8/Vagrant-1.2.6.dmg'
  homepage 'http://www.vagrantup.com'
  version '1.2.6'
  sha1 '5f3e1bc5761b41e476bc8035f5ba03d42c0e12f0'
  install 'Vagrant.pkg'
  uninstall :script => 'uninstall.tool', :input => %w[Yes]
end
```

To get started, use the handy dandy `brew cask create` command.

```bash
brew cask create my-new-cask
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
  sha1 ''
  link ''
end
```

If you are submitting a non-stable version of an application that already has a
cask (e.g. beta or nightly), then the Cask should be submitted to the
[caskroom/versions](https://github.com/caskroom/homebrew-versions) repo.

Fill in the following fields for your Cask:

| field              | explanation |
| ------------------ | ----------- |
| __cask metadata__  | information about the Cask (required)
| `url`              | URL to the `.dmg`/`.zip`/`.tgz` file that contains the application
| `homepage`         | application homepage; used for the `brew cask home` command
| `version`          | application version; determines the directory structure in the Caskroom
| `sha1`             | SHA-1 Checksum of the file; checked when the file is downloaded to prevent any funny business (can be omitted with `no_checksum`)
| __artifact info__  | information about artifacts inside the Cask (can be specified multiple times)
| `nested_container` | relative path to an inner container that must be extracted before moving on with the installation; this allows us to support dmg inside tar, zip inside dmg, etc.
| `link`             | relative path to a file that should be linked into the `Applications` folder on installation
| `prefpane`         | relative path to a preference pane that should be linked into the `~/Library/PreferencePanes` folder on installation
| `qlplugin`         | relative path to a QuickLook plugin that should be linked into the `~/Library/QuickLook` folder on installation
| `font`             | relative path to a font that should be linked into the `~/Library/Fonts` folder on installation
| `install`          | relative path to `pkg` that should be run to install the application
| `uninstall`        | indicates what commands/scripts must be run to uninstall a pkg-based application (see __Uninstall Support__ for more information)

### SourceForge URLs

SourceForge projects are a common way to distribute binaries, but they provide many different styles of URLs to get to the goods.

We prefer URLs of this format:

```
http://sourceforge.net/projects/$PROJECTNAME/files/latest/download
```

This lets the project maintainers choose the best URL for download.

If the "latest" URL does not point to a valid file for a Mac app, then we fall back this format:

```
http://downloads.sourceforge.net/sourceforge/$PROJECTNAME/$FILENAME.$EXT
```

### Naming Casks

We try to maintain a consistent naming policy so everything stays clean and predictable.

#### Start from the app's canonical name

  * do your best to find the canonical name for the title of the app you're submitting a Cask for
  * however the author writes the app name is how it should be styled; this can usually be found on the author's website or within the application itself;
  * pay attention to details, for example: `"Git Hub" != "git_hub" != "GitHub"`

#### Cask name

A Cask's "name" is its primary identifier in our project. It's the string people will use to interact with this Cask on their system.

To get from an app's canonical name to a Cask name:

  * all lower case
  * spaces become hyphens
  * digits stay digits
  * examples

Casks are stored in a Ruby file matching their name.

#### Cask class

Casks are implemented as Ruby classes, so a Cask's "class" needs to be a valid Ruby class name.

When going from a Cask's __name__ to its __class name__:

  * UpperCamelCased
  * wherever a hyphen occurs in the __Cask name__, the __class__ has a case change
  * invalid characters are replaced with English word equivalents


#### Cask Naming Examples

These illustrate most of the naming rules in our policy.

Canonical App Name | Cask Name           | Cask Class
-------------------|---------------------|------------------------
Audio Hijack Pro   | `audio-hijack-pro`  | `AudioHijackPro`
VLC                | `vlc`               | `Vlc`
BetterTouchTool    | `bettertouchtool`   | `Bettertouchtool`
iTerm2             | `iterm2`            | `Iterm2`
Akai LPK25 Editor  | `akai-lpk25-editor` | `AkaiLpk25Editor`
Sublime Text 3     | `sublime-text-3`    | `SublimeText3`
1Password          | `1password`         | `Onepassword` (see __NAMING NOTE__)


#### NAMING NOTE

When a Cask's _name_ does not map to a valid Ruby class (for example, when it starts with a number) there's an incoming feature to allow Cask _classes_ to indicate the proper name using a keyword.

This feature is not yet complete, so you'll see some __Cask name__s that don't fully conform to the rules. For example, currently the Cask for 1Password is called `onepassword` instead of `1password`.

When all this is sorted out, this message will go away.


### Font Casks

#### Naming Font Casks

Fonts casks are named as described above for applications, with the following amendments:

  * The string `font-` should be prepended to the Cask name, to prevent clashes with application names.
  * The canonical font name is the font family name as returned by the command `otfinfo --family`. (`otfinfo` is a free utility available as part of the TeX distribution.)
  * The font version string is as returned by the command `otfinfo --font-version`.

Example:

Canonical Font Name | Cask Name             | Cask Class
--------------------|-----------------------|------------------------
Anonymous Pro       | `font-anonymous-pro`  | `FontAnonymousPro`

#### Multiple Fonts per Cask

Multiple font faces or families are often supplied in a single distribution. When fonts are distributed together, they should be installed together. Each Cask should correspond to a single binary distribution, not necessarily a single font face.


### Uninstall Support

Since OS X has no standard uninstall behavior, there's a wide variety of
methods by which applications can be uninstalled. The `uninstall` directive has
many features to help properly remove a Cask-installed application.

These features are utilized via a hash argument to `uninstall` with any number
of the following keys:

* `:script` (string) - relative path to an uninstall script to be run via sudo
  - `:args` - array of arguments to the uninstall script
  - `:input` - array of lines of input to be sent to `stdin` of the script
* `:kext` (string or array) - bundle id of kext(s) to unload from the system before proceeding with the uninstaller
* `:pkgutil` (string or regexp) - regexp matching bundle id(s) of packages to uninstall using `pkgutil`
* `:launchctl` (string or array) - ids of launchctl services to remove
* `:files` (array) - absolute paths of files or directories to remove
  - should only be used as a last resort, since this is the blunt force approach

### Good Things to Know

* In order to find out the checksum for the file, the easiest way is to leave
  it blank and attempt installation. The checksum will fail and tell you what the
  real SHA-1 should be.
* If the application does not have versioned downloads, you can skip the
  checksum by specifying `no_checksum`, which takes no arguments.
* We have some conventions for projects without version-specific URLs. `latest`
  is a common version for those, but you can grep through the existing Casks for
  other examples.

## Testing your new Cask

Give it a shot with `brew cask install my-new-cask`

Did it install? If something went wrong, `brew cask uninstall my-new-cask` and
edit your Cask to fix it.

If everything looks good, you'll also want to make sure your Cask passes audit
with

`brew cask audit my-new-cask --download`

If your application and homebrew-cask do not work well together, feel free to
[file an issue](https://github.com/phinze/homebrew-cask/issues) after checking
out open issues.

## Submitting your Changes

Hop into your Tap and check to make sure your new Cask is there:

```bash
cd $(brew --prefix)/Library/Taps/phinze-cask
git status
# On branch master
# Untracked files:
#   (use "git add <file>..." to include in what will be committed)
#
#       Casks/my-new-cask.rb
```

So far, so good. Now make a feature branch that you'll use in your pull
request:

```bash
git checkout -b my-new-cask
Switched to a new branch 'my-new-cask'
```

Stage your Cask with `git add Casks/my-new-cask.rb`. You can view the changes
that are to be committed with `git diff --cached`.

Commit your changes with `git commit -v`. Write your commit message with:

 * the first line being commit summary, 50 characters or less,
 * followed by an empty line
 * and an explanation of the commit, wrapped to 72 characters.

See [a note about git commit
messages](http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html)
for a more thorough explanation.

Push your changes to your GitHub account:

```bash
github_user='<my-github-username>'
git push $github_user my-new-cask
```

### Filing a pull request on GitHub

Now go to *your* GitHub repository at
https://github.com/my-github-username/homebrew-cask, switch branch to your
topic branch and click the 'Pull Request' button. You can then add further
comments to your pull request.

Congratulations! You are done now, and your Cask should be pulled in or
otherwise noticed in a while.

## Cleaning up

After your Pull Request is away, you might want to get yourself back on master,
so that `brew update` will pull down new Casks properly.

```bash
cd $(brew --prefix)/Library/Taps/phinze-cask
git checkout master
```

Neat and tidy!

## Working on homebrew-cask itself

If you'd like to hack on the Ruby code in the project itself, one way to play
with changes is to symlink the `rubylib` folder to your Tap repository.

  ```bash
  $ cd $(brew --prefix brew-cask)
  $ mv rubylib{,.orig}
  $ ln -s $(brew --prefix)/Library/Taps/phinze-cask/lib rubylib
  ```

Now you can hack on `homebrew-cask` in the Tap and use the `brew cask` CLI like
normal to interact with your latest code.

### Mind the test suite!

If you're making changes - please write some tests for them! Also be sure to
run the whole test suite using `rake` before submitting (if you forget Travis-CI will do
that for you and embarrass you in front of all your friends). :)

# <3 THANK YOU! <3
