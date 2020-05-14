cask 'handbrake' do
  version '1.3.2'
  sha256 'f3680d583a1c1ebe0e0a5316ee22d224d48cb3c5be14af29b14ab9071744184f'

  # github.com/HandBrake/HandBrake/ was verified as official when first introduced to the cask
  url "https://github.com/HandBrake/HandBrake/releases/download/#{version}/HandBrake-#{version}.dmg"
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
