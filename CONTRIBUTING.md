# How to Contribute

So you want to contribute to the project. THIS IS GREAT NEWS!

Seriously. We're all pretty happy about this.

## Getting set up to contribute

Fork the homebrew-cask repository as per instructions in the
[GitHub help pages](https://help.github.com/articles/fork-a-repo):

1. Fork the repository in GitHub with the 'Fork' button
2. Clone your GitHub fork into your computer
3. Configure upstream remote to point at
  [phinze/homebrew-cask](https://github.com/phinze/homebrew-cask.git).

## Adding a Cask

Making a Cask is easy: a Cask is a Ruby file that is only seven lines long.
See the Cask for Alfred.app for an example:

  ```ruby
  class Alfred < Cask
    url 'http://cachefly.alfredapp.com/alfred_1.3.2_265.zip'
    homepage 'http://www.alfredapp.com/'
    version '1.3.2_265'
    sha1 'e10f15a0ae758cae2a22557f14890fa5989260ce'
  end
  ```

### Preliminary steps

1. Go to the folder in which you cloned `phinze/homebrew-cask` (assuming
  `~/homebrew-cask`)
  ```bash
  $ cd ~/homebrew-cask
  ```
2. If you have forked a longer while ago, there might be upstream changes.
  Pull those in (assuming upstream branch is called `upstream`):
  ```bash
  $ git fetch upstream
  # Fetches any new changes from the original repo
  $ git checkout master
  # Check out branch "master" (just to make sure)
  $ git merge upstream/master
  # Merges any changes fetched into your working files
  ```
3. Make a topic branch for your work
  ```bash
  $ git checkout -b my-branch
  # Create a new branch called "my-branch" and make it active
  ```

### Write the Cask file

1. Copy a template cask to help writing the new one
  ```bash
  $ cp test/support/Casks/basic-cask.rb Casks/my-app.rb
  ```
2. Edit the Cask with your preferred editor
  ```bash
  $ emacs Casks/my-app.rb
  ```
  Include the following fields in your Cask:
    * URL to the `.dmg`/`.zip` file that contains the application (currently
      only `.app` files are supported)
    * Application homepage
    * Application version
    * Checksum of the file

  In order to find out the checksum for the file, you need to download the file
  and then:
  
  ``` bash
  $ curl -OL http://example-server.com/path/to/file/my-app.dmg
  # Download the file that contains the application
  $ shasum my-app.dmg
  # Calculate SHA-1 sum for the downloaded file
  ```
  
  Some developers (like Mozilla) and hosts (like Sourceforge) provide checksums,
  so you can use those directly, without needing to download the file separately.
  
  In addition to `sha1` you can provide the checksum with `md5`, `sha256`, or `sha512`
  in the same manner.  Use commands `md5 my-app.dmg` or `shasum -a 256 my-app.dmg`
  to obtain these checksums.

  If the application does not have versioned downloads, you can provide option
  `no_checksum`, which takes no arguments.

This is all you need to do to write a Cask!

## Testing your new Cask

When Casks are installed, they are searched in `/usr/local/Library/Taps`.  You
can replace the files in folder `phinze-cask` but you are recommended to make
your own folder in which you place the tested Casks.
  
  ```bash
  $ mkdir -p /usr/local/Library/Taps/my-casks/Casks
  # Create directory in which the tested Casks are placed
  $ ln -s ~/homebrew-cask/Casks/my-app.rb /usr/local/Library/Taps/my-casks/Casks
  # Create a symbolic link to the Cask you created
  ```

Now you can either audit your Cask with `brew cask audit my-app` or try to
install it: `brew cask install my-app`.

Did it install?  If yes, you can continue with submitting a pull request.  If
something went wrong, `brew cask uninstall my-app` and edit your Cask in
`~/homebrew-cask/Casks/my-app.rb` or whereever you placed it.  Since you
created a symbolic link in `/usr/local/Library/Taps/my-casks/Casks`, changes
are automatically reflected in there, so you can directly try installing after
those changes.

If your application and homebrew-cask do not work well together, feel free to
[file an issue](https://github.com/phinze/homebrew-cask/issues) after checking
out open issues.

## Submitting your Cask

Now that you have your Cask ready and you have verified it works correctly, you
can commit your changes and submit a
[pull request](https://help.github.com/articles/using-pull-requests).

### Committing your changes

Go back to the folder in which you cloned homebrew-cask.  Use `git status` to
verify that you are on the right branch and that you have changed the right
files.

1. Stage your Cask with `git add Casks/my-app.rb`.  You can view the changes
  that are to be committed with `git diff --cached`.
2. Commit your changes with `git commit`.  Write your commit message with
    * the first line being commit summary, 50 characters or less,
    * followed by an empty line
    * and an explanation of the commit, wrapped to 72 characters.
  See
  [a note about git commit messages](http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html)
  for a more thorough explanation.
3. Push your changes to your GitHub account: `git push origin my-branch`.

### Filing a pull request on GitHub

Now go to *your* GitHub repository at
https://github.com/your-github-username/homebrew-cask, switch branch to your
topic branch and click on 'Pull Request' button.  You can then add further
comments to your pull request.

You are done now, and your Cask should be pulled in or otherwise noticed in a
while.
