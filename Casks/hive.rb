class Hive < Cask
  url 'https://github.com/hivewallet/hive-osx/releases/download/1.3/Hive-1.3.zip'
  homepage 'http://www.hivewallet.com'
  version '1.3'
  sha256 '0f0889ec2553a717dac7b7f5ccf418ff55bfe8c15c853d09f69c7431989b192f'
  link 'Hive.app'

  after_install do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'com.hivewallet.Hive', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
end
