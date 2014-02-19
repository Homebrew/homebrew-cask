# How To Contribute

So you want to contribute to the project. **THIS IS GREAT NEWS!**  Seriously. We're
all pretty happy about this.

## Getting Set Up To Contribute

1. Fork the repository in GitHub with the 'Fork' button
2. Add your GitHub fork as a remote for your homebrew-cask Tap

```bash
github_user='<my-github-username>'
cd "$(brew --prefix)"/Library/Taps/phinze-cask
git remote add $github_user https://github.com/$github_user/homebrew-cask
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
  sha256 ''
  link ''
end
```

If you are submitting a non-stable version of an application that already has a
cask (e.g. beta or nightly), then the Cask should be submitted to the
[caskroom/versions](https://github.com/caskroom/homebrew-versions) repo.

Fill in the following fields for your Cask:

| field              | description |
| ------------------ | ----------- |
| __cask metadata__  | information about the Cask (required)
| `url`              | URL to the `.dmg`/`.zip`/`.tgz` file that contains the application (see __URL Details__ for more information)
| `homepage`         | application homepage; used for the `brew cask home` command
| `version`          | application version; determines the directory structure in the Caskroom
| `sha256`           | SHA-256 checksum of the file; checked when the file is downloaded to prevent any funny business (can be omitted with `no_checksum`)
| __artifact info__  | information about artifacts inside the Cask (can be specified multiple times)
| `link`             | relative path to a file that should be linked into the `Applications` folder on installation (see __Link Details__ for more information)
| `install`          | relative path to `pkg` that should be run to install the application (see __Install Details__ for more information)
| `uninstall`        | indicates what commands/scripts must be run to uninstall a pkg-based application (see __Uninstall Details__ for more information)

Additional fields you might need for special use-cases:

| field              | description |
| ------------------ | ----------- |
| `prefpane`         | relative path to a preference pane that should be linked into the `~/Library/PreferencePanes` folder on installation
| `colorpicker`      | relative path to a ColorPicker plugin that should be linked into the `~/Library/ColorPickers` folder on installation
| `qlplugin`         | relative path to a QuickLook plugin that should be linked into the `~/Library/QuickLook` folder on installation
| `font`             | relative path to a font that should be linked into the `~/Library/Fonts` folder on installation
| `widget`           | relative path to a widget that should be linked into the `~/Library/Widgets` folder on installation (ALPHA: DOES NOT WORK YET)
| `service`          | relative path to a service that should be linked into the `~/Library/Services` folder on installation
| `binary`           | relative path to a binary that should be linked into the `~/usr/local/bin` folder on installation
| `input_method`     | relative path to a input method that should be linked into the `~/Library/Input Methods` folder on installation
| `screen_saver`     | relative path to a Screen Saver that should be linked into the `~/Library/Screen Savers` folder on installation
| `nested_container` | relative path to an inner container that must be extracted before moving on with the installation; this allows us to support dmg inside tar, zip inside dmg, etc.
| `depends_on_formula` | a list of Homebrew Formulae upon which this Cask depends
| `caveats`          | a string or Ruby block providing the user with Cask-specific information at install time (see __Caveats Details__ for more information)
| `after_install`    | a Ruby block containing postflight install operations
| `after_uninstall`  | a Ruby block containing postflight uninstall operations


### URL Details

#### HTTP URLs

In most cases, a plain URL string is all you need to specify for a Cask. Sometimes, additional information is required for the `curl`-based downloader to successfully fetch the file. There are a few options to help in these cases, which can be given as key/value pairs appended to `url`:

| key                | value       |
| ------------------ | ----------- |
| `:cookies`         | a hash of cookies to be set in the download request
| `:referer`         | a string holding the URL to set as referrer in the download request
| `:user_agent`      | a string holding the user agent to set for the download request. Can also be set to the symbol `:fake`, which will use a generic Browser-like user agent string. we prefer `:fake` when the server does not require a specific user agent.

#### SourceForge URLs

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

#### Subversion URLs

In rare cases, a distribution may not be available over ordinary HTTP.  Subversion URLs are also supported, and can be specified by appending the following key/value pairs to `url`:

| key                | value       |
| ------------------ | ----------- |
| `:using`           | the symbol `:svn` is the only legal value
| `:revision`        | a string identifying the subversion revision to download
| `:trust_cert`      | set to `true` to automatically trust the certificate presented by the server (avoiding an interactive prompt)


### Naming Casks

We try to maintain a consistent naming policy so everything stays clean and predictable.

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

A "Cask name" is the primary identifier for a package in our project. It's the string
people will use to interact with this Cask on their system.

To get from the App's canonical name to the Cask name:

  * convert all letters to lower case
  * hyphens stay hyphens
  * spaces become hyphens
  * digits stay digits
  * a leading digit gets spelled out into English: `1password` becomes `onepassword`

Casks are stored in a Ruby file matching their name.

#### Cask Class

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
Sublime Text 3     | `sublime-text3`     | `SublimeText3`
1Password          | `1password`         | `Onepassword` (see __NAMING NOTE__)


#### NAMING NOTE

When a Cask's _name_ does not map to a valid Ruby class (for example, when it starts with a number) there's an incoming feature to allow Cask _classes_ to indicate the proper name using a keyword.

This feature is not yet complete, so you'll see some __Cask name__s that don't fully conform to the rules. For example, currently the Cask for 1Password is called `onepassword` instead of `1password`.

When all this is sorted out, this message will go away.


### Font Casks

Fonts are maintained separately.  Please see [CONTRIBUTING.md](https://github.com/caskroom/homebrew-fonts/blob/master/CONTRIBUTING.md) in the [homebrew-fonts](https://github.com/caskroom/homebrew-fonts) repository.

### Link Details

In the simple case of a single string argument to `link`, a symlink is
created in the target `~/Applications` directory using the same name as
the source file.  For example:

```ruby
link 'Alfred 2.app'
```

causes the creation of this symlink

```bash
~/Applications/Alfred 2.app
```

which points to a source file such as

```bash
/opt/homebrew-cask/Caskroom/alfred/2.1.1_227/Alfred 2.app
```

#### Renaming the Target

You can rename the target link which appears in your
`~/Applications` directory by adding a `:target` key to `link`,
like this:

```ruby
link 'Alfred 2.app', :target => 'Jeeves.app'
```

The `:target` key works in a similar way for these Cask fields as well: `binary`,
`colorpicker`, `font`, `input_method`, `prefpane`, `qlplugin`, `service`, and
`widget`.

#### Subfolders in .zip and .dmg

When the application is in a subfolder within a downloaded .zip or .dmg, that folder's name must be included in the `link` field in order for the app to be installed.  So, if the downloaded zip unzips to a folder 'TexmakerMacosxLion' containing texmaker.app, the link must be specified as:

```ruby
link 'TexmakerMacosxLion/texmaker.app'
```

Linking to the .app file without reference to the containing folder will result in installation failing with a "symlink source is not there" error.

### Install Details

The first argument to `install` should be a relative path to the `pkg` file
to be installed.  For example:

```ruby
install 'Vagrant.pkg'
```

Subsequent arguments to `install` are key/value pairs which modify the
install process.  Currently supported keys are

  * `:allow_untrusted` -- pass `-allowUntrusted` to `/usr/sbin/installer`

Example:

```ruby
install 'Soundflower.pkg', :allow_untrusted => true
```

### Uninstall Details

A `pkg`-based Cask using `install` will **not** know how to uninstall
correctly unless an `uninstall` stanza is given.

Since `pkg` installers can do arbitrary things, different techniques are
needed to uninstall in each case.  You may need to specify one, or several,
of the following key/value pairs as arguments to `uninstall`.  `:pkgutil`
is the most useful.

* `:early_script` (string or hash) - like `:script`, but runs early (for special cases, best avoided)
* `:launchctl` (string or array) - ids of `launchctl` jobs to remove
* `:quit` (string or array) - bundle ids of running applications to quit
* `:kext` (string or array) - bundle ids of kexts to unload from the system
* `:pkgutil` (string or regexp) - regexp matching bundle ids of packages to uninstall using `pkgutil`
* `:script` (string or hash) - relative path to an uninstall script to be run via sudo; use hash if args are needed
  - `:executable` - relative path to an uninstall script to be run via sudo (required for hash form)
  - `:args` - array of arguments to the uninstall script
  - `:input` - array of lines of input to be sent to `stdin` of the script
  - `:must_succeed` - set to `false` if the script is allowed to fail
* `:files` (array) - absolute paths of files or directories to remove.  `:files` should only be used as a last resort. `:pkgutil` is strongly preferred

Each `uninstall` technique is applied according to the order above. The order
in which `uninstall` keys appear in the Cask file is ignored.

For assistance filling in the right values for `uninstall` keys, there are
several helper scripts found under `developer/bin` in the homebrew-cask
repository.  Each of these scripts responds to the `-help` option with
additional documentation.

The easiest way to work out an `uninstall` stanza is on a system where the
`pkg` is currently installed and operational.  To operate on an uninstalled
`pkg` file, see __Working With a pkg File Manually__, below.

#### Uninstall Key :pkgutil

This is the most important and useful uninstall key.  `:pkgutil` is
often sufficient to completely uninstall a `pkg`.

IDs for the most recently-installed packages can be listed using the
command
```bash
$ ./developer/bin/list_recent_pkg_ids
```

#### List Files Associated With a `pkg`

Once you know the ID for an installed package, (above), you can list
all files on your system associated with that package ID using the
OS X command
```bash
$ pkgutil --files <package.id.goes.here>
```
Listing the associated files can help you assess whether the package
included any launchctl jobs or kernel extensions (kexts).

#### Uninstall Key :launchctl

IDs for currently loaded launchctl jobs can be listed using the command
```bash
$ ./developer/bin/list_loaded_launchjob_ids
```

IDs for all installed launchctl jobs can be listed using the command
```bash
$ ./developer/bin/list_installed_launchjob_ids
```

#### Uninstall Key :quit

Bundle IDs for currently running Applications can be listed using the command
```bash
$ ./developer/bin/list_running_app_ids
```

Bundle IDs inside an Application bundle on disk can be listed using the command
```bash
$ ./developer/bin/list_ids_in_app </path/to/application.app>
```

#### Uninstall Key :kext

IDs for currently loaded kernel extensions can be listed using the command
```bash
$ ./developer/bin/list_loaded_kext_ids
```

IDs inside a kext bundle you have located on disk can be listed using the command
```bash
$ ./developer/bin/list_id_in_kext </path/to/name.kext>
```

#### Working With a pkg File Manually

Advanced users may wish to work with a `pkg` file manually, without having the
package installed.

A list of files which may be installed from a `pkg` can be extracted using the
command
```bash
$ ./developer/bin/list_payload_in_pkg </path/to/my.pkg>
```

Candidate application names helpful for determining the name of a Cask may be
extracted from a `pkg` file using the command
```bash
$ ./developer/bin/list_apps_in_pkg </path/to/my.pkg>
```

Candidate package IDs which may be useful in a `:pkgutil` key may be
extracted from a `pkg` file using the command
```bash
$ ./developer/bin/list_ids_in_pkg </path/to/my.pkg>
```

A fully manual method for finding bundle ids in a package file follows:

  1. Unpack `/path/to/my.pkg` (replace with your package name) with `pkgutil --expand /path/to/my.pkg /tmp/expanded.unpkg`.
  2. The unpacked package is a folder. Bundle ids are contained within files named `PackageInfo`. These files can be found
     with the command `find /tmp/expanded.unpkg -name PackageInfo`.
  3. `PackageInfo` files are XML files, and bundle ids are found within the `identifier` attributes of `<pkg-info>` tags that look like
     `<pkg-info ... identifier="com.oracle.jdk7u51" ... >`, where extraneous attributes have been snipped out and replaced with ellipses.
  4. Kexts inside packages are also described in `PackageInfo` files.  If any kernel extensions are present, the command
     `find /tmp/expanded.unpkg -name PackageInfo -print0 | xargs -0 grep -i kext` should return a `<bundle id>` tag with a `path`
     attribute that contains a `.kext` extension, for example `<bundle id="com.wavtap.driver.WavTap" ... path="./WavTap.kext" ... />`.
  5. Once bundle ids have been identified, the unpacked package directory can be deleted.

### Caveats Details

#### Caveats as a String

When `caveats` is a string, it is evaluated at compile time. Use this only for a static
message in which you don't need to interpolate any runtime variables.  Example:

	caveats 'Using this software is hazardous to your health.'

#### Caveats as a Block

When `caveats` is a Ruby block, evaluation is deferred until install time. Here you may
refer to the Cask instance in your message to the user:

```ruby
caveats do
  puts "Using #{@cask} is hazardous to your health."
end
```

#### Caveats Mini-DSL

There is a mini-DSL available within `caveats` blocks.

The following methods may be called to generate standard warning messages:

| method                            | description |
| --------------------------------- | ----------- |
| `manual_installer(path)`          | The user should execute an installer to complete the installation. `path` may be absolute, or relative to the Cask.
| `path_environment_variable(path)` | The user should make sure `path` is in their `$PATH` environment variable
| `logout`                          | The user should log out and log back in to complete installation
| `reboot`                          | The user should reboot to complete installation
| `files_in_usr_local`              | The Cask installs files to `/usr/local`, which may confuse Homebrew
| `arch_only(list)`                 | The Cask only supports certain architectures.  Currently valid elements of `list` are `intel-32` and `intel-64`
| `os_version_only(list)`           | The Cask only supports certain OS X Versions.  Currently valid elements of `list` are `10.5`, `10.6`, `10.7`, `10.8`, and `10.9`

Example:

```ruby
caveats do
  manual_installer 'Little Snitch Installer.app'
end
```

And the following methods may be useful for interpolation:

| method             | description |
| ------------------ | ----------- |
| `title`            | the Cask title
| `caskroom_path`    | eg `/opt/homebrew-cask/Caskroom`
| `destination_path` | where this particular Cask is stored, including version number, eg `/opt/homebrew-cask/Caskroom/google-chrome/stable-channel`

### Good Things To Know

* In order to get the SHA-256 checksum for the file, the easiest way is to run
  `shasum -a 256 <file>`.
    * Although new casks/cask updates should use SHA-256, old casks may still
    use SHA-1 checksums instead of SHA-256 checksums: they have a
    `sha1` field instead of a `sha256` field (calculated using `shasum <file>`).
* If the application does not have versioned downloads, you can skip the
  checksum by specifying `no_checksum`, which takes no arguments.
* We have some conventions for projects without version-specific URLs. `latest`
  is a common version for those, but you can grep through the existing Casks for
  other examples.

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

## Indenting

All Casks and code in the homebrew-cask project should be indented using two
spaces (never tabs).

## Submitting Your Changes

Hop into your Tap and check to make sure your new Cask is there:

```bash
cd "$(brew --prefix)"/Library/Taps/phinze-cask
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
github_user='<my-github-username>'
git push $github_user my-new-cask
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

After your Pull Request is away, you might want to get yourself back on master,
so that `brew update` will pull down new Casks properly.

```bash
cd "$(brew --prefix)"/Library/Taps/phinze-cask
git checkout master
```

Neat and tidy!

## Working On homebrew-cask Itself

If you'd like to hack on the Ruby code in the project itself, please
see [HACKING.md](HACKING.md).

# <3 THANK YOU! <3
