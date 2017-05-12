cask 'handbrake' do
  version '1.0.7'
  sha256 '3cd2e6228da211349574dcd44a0f67a3c76e5bd54ba8ad61070c21b852ef89e2'

  url "https://download.handbrake.fr/handbrake/releases/#{version}/HandBrake-#{version}.dmg"
  appcast 'https://github.com/HandBrake/HandBrake/releases.atom',
          checkpoint: '8580ea3bc499c5c001ffb90ec2d0997447af6d042270530a33d836b5ee93b0a2'
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
