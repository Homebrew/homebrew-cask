cask 'handbrake' do
  version '1.1.1'
  sha256 '309f2c87d8d63819b1f6074dfd6e7827eb5c98cba56e08a8113413cfb984cfd9'

  url "https://download.handbrake.fr/handbrake/releases/#{version}/HandBrake-#{version}.dmg"
  appcast 'https://github.com/HandBrake/HandBrake/releases.atom'
  name 'HandBrake'
  homepage 'https://handbrake.fr/'

  auto_updates true
  depends_on macos: '>= :lion'

  app 'HandBrake.app'

  zap trash: [
               '~/Library/Application Support/HandBrake',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/fr.handbrake.handbrake.sfl*',
               '~/Library/Caches/fr.handbrake.HandBrake',
               '~/Library/Preferences/fr.handbrake.HandBrake.plist',
               '~/Library/Saved Application State/fr.handbrake.HandBrake.savedState',
             ]
end
