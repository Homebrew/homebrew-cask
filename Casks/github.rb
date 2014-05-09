class Github < Cask
  url 'https://central.github.com/mac/latest'
  homepage 'http://mac.github.com'
  version 'latest'
  sha256 :no_check
  link 'GitHub.app'
  binary 'GitHub.app/Contents/MacOS/github_cli', :target => 'github'
  after_install do
    system '/usr/bin/defaults', 'write', 'com.github.GitHub', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
end
