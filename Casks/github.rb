class Github < Cask
  version :latest
  sha256 :no_check

  url 'https://central.github.com/mac/latest'
  homepage 'http://mac.github.com'

  app 'GitHub.app'
  binary 'GitHub.app/Contents/MacOS/github_cli', :target => 'github'
  postflight do
    system '/usr/bin/defaults', 'write', 'com.github.GitHub', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
end
