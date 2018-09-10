cask 'handbrake' do
  version '1.1.2'
  sha256 '181feb443687d84b15cc8da7cc43183fb1b88a62c8b4476cf77b948a6406b368'

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
