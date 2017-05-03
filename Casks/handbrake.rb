cask 'handbrake' do
  version '1.0.7'
  sha256 '013623e5e50449bbdf6943549d8224a122aa6c42bd3300a1bd2b743b01ae6793'

  url "https://download.handbrake.fr/handbrake/releases/#{version}/HandBrake-#{version}.dmg"
  appcast 'https://github.com/HandBrake/HandBrake/releases.atom',
          checkpoint: 'a3746a9dd8bdb613c9744d0b5ffb12e29fabed5d43ced5b820a61afa3f2f86ed'
  name 'HandBrake'
  homepage 'https://handbrake.fr/'

  auto_updates true
  depends_on macos: '>= :lion'

  app 'HandBrake.app'

  zap delete: [
                '~/Library/Application Support/HandBrake',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/fr.handbrake.handbrake.sfl',
                '~/Library/Caches/fr.handbrake.HandBrake',
                '~/Library/Preferences/fr.handbrake.HandBrake.plist',
                '~/Library/Saved Application State/fr.handbrake.HandBrake.savedState',
              ]
end
