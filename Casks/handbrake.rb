cask 'handbrake' do
  version '1.2.2'
  sha256 '690e5bb3cc668b6e4c74bdbe43095c3693e55a06c1e5f1b330420f7c2a406c8e'

  url "https://download.handbrake.fr/handbrake/releases/#{version}/HandBrake-#{version}.dmg"
  appcast 'https://github.com/HandBrake/HandBrake/releases.atom'
  name 'HandBrake'
  homepage 'https://handbrake.fr/'

  auto_updates true

  app 'HandBrake.app'

  zap trash: [
               '~/Library/Application Support/HandBrake',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/fr.handbrake.handbrake.sfl*',
               '~/Library/Caches/fr.handbrake.HandBrake',
               '~/Library/Preferences/fr.handbrake.HandBrake.plist',
               '~/Library/Saved Application State/fr.handbrake.HandBrake.savedState',
             ]
end
