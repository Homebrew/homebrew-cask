class Github < Cask
  url 'https://central.github.com/mac/latest'
  homepage 'http://mac.github.com'
  version 'latest'
  no_checksum
  link 'GitHub.app'
  after_install do
    system '/usr/bin/defaults', 'write', 'com.github.GitHub', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
end
