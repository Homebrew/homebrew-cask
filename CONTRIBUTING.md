# How to Contribute

So you want to contribute to the project. **THIS IS GREAT NEWS!**  Seriously. We're
all pretty happy about this.

## Getting set up to contribute

Fork the homebrew-cask repository as per instructions in the
[GitHub help pages](https://help.github.com/articles/fork-a-repo):

1. Fork the repository in GitHub with the 'Fork' button
2. Add your GitHub fork as a remote for your homebrew-cask Tap

```bash
github_user='<my-github-username>'
cd $(brew --prefix)/Library/Taps/phinze-cask
git remote add $github_user https://github.com/$github_user/homebrew-cask
```

## Adding a Cask

Making a Cask is easy: a Cask is a Ruby file that is only eight lines long.
Here's a Cask for Alfred.app as an example:

```ruby
class Alfred < Cask
  url 'http://cachefly.alfredapp.com/alfred_1.3.2_265.zip'
  homepage 'http://www.alfredapp.com/'
  version '1.3.2_265'
  sha1 'e10f15a0ae758cae2a22557f14890fa5989260ce'
  link 'Alfred.app'
end
```

To get started, use the handy dandy `brew cask create` command.

```bash
brew cask create my-new-cask
```

This will open `$EDITOR` with a template for your new cask. Note that the
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

Fill in the following fields for your Cask:

| field | explanation |
| ----- | ----------- |
| `url` |  URL to the `.dmg`/`.zip`/`.tgz` file that contains the application
| `homepage` | application homepage;used for the `brew cask home` command
| `version` | application version; determines the directory structure in the Caskroom
| `sha1` | SHA-1 Checksum of the file; checked when the file is downloaded to prevent any funny business
| `link` | indicate which file(s) should be linked into the `Applications` folder on installation

### Good Things to Know

* In order to find out the checksum for the file, the easiest way is to leave
  it blank and attempt installation. The checksum will fail and tell you what the
  real sha1 should be.
* You can specify `link :none` if no files should be linked
* If the application does not have versioned downloads, you can skip the
  checksum by specifying `no_checksum`, which takes no arguments
* We have some conventions for projects without version-specific URLs. `latest`
  is a common version for those, but you can grep through the existing casks for
  other examples

## Testing your new Cask

Give it a shot with `brew cask install my-new-cask`

Did it install? If something went wrong, `brew cask uninstall my-new-cask` and
edit your Cask to fix it.

If everything looks good, you'll also want to make sure you cask passes audit
with 

```bash
$brew cask audit my-new-cask --download
```

If your application and homebrew-cask do not work well together, feel free to
[file an issue](https://github.com/phinze/homebrew-cask/issues) after checking
out open issues.

## Submitting your Changes

Hop into your Tap and check to make sure your new cask is there:

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

Commit your changes with `git commit -v`.  Write your commit message with:

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
topic branch and click on 'Pull Request' button.  You can then add further
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

If you'd like to hack on the ruby code in the project itself, one way to play
with changes is to symlink the `rubylib` folder to your Tap repository. So
assuming your fork is cloned at `~/homebrew-cask` you could do something like
this:

  ```bash
  $ cd $(brew --prefix brew-cask)
  $ mv rubylib{,.orig}
  $ ln -s ~/homebrew-cask/lib rubylib
  ```

Now you can hack on `~/homebrew-cask` and use the cli to interact with the code.

### Mind the test suite!

If you're making changes - please write some tests for them! Also be sure to
run the whole test suite before submitting (if you forget Travis-CI will do
that for you and embarass you in front of all your friends). :)

# <3 THANK YOU! <3
