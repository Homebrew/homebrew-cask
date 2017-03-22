cask 'handbrake' do
  version '1.0.3'
  sha256 '0db04efca99317a57a85477e06f8d96319dcbd0b22ce939241109a13ab2af93e'

  url "https://download.handbrake.fr/handbrake/releases/#{version}/HandBrake-#{version}.dmg"
  appcast 'https://github.com/HandBrake/HandBrake/releases.atom',
          checkpoint: 'd75178825cb79c5c69d72956add21e77d8614cd9a49b175a2f75de4055e5b48f'
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
