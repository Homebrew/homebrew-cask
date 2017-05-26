cask 'handbrake' do
  version '1.0.7'
  sha256 '013623e5e50449bbdf6943549d8224a122aa6c42bd3300a1bd2b743b01ae6793'

  url "https://download.handbrake.fr/handbrake/releases/#{version}/HandBrake-#{version}.dmg"
  appcast 'https://github.com/HandBrake/HandBrake/releases.atom',
          checkpoint: 'b1e563b9bd7c2ba000b4d34a5f9046841a2fa65c549977504203da8c3ad2ea59'
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
