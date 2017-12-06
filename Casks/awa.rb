cask 'awa' do
  version '1.4.2'
  sha256 '3fbd1cc851d4157c6a8abc340a4200eff9e2d0d51764b41b12929df09da4ce8c'

  # download-d.awa.io/mac/stable was verified as official when first introduced to the cask
  url "https://download-d.awa.io/mac/stable/AWASetup-v#{version}.dmg"
  name 'AWA'
  homepage 'https://awa.fm/'

  auto_updates true

  app 'AWA.app'

  uninstall launchctl: 'fm.awa.liverpool',
            quit:      'fm.awa.liverpool'

  zap trash: [
               '~/Library/Application Support/AWA',
               '~/Library/Preferences/fm.awa.liverpool.plist',
               '~/Library/Preferences/fm.awa.liverpool.helper.plist',
               '~/Library/Saved Application State/fm.awa.liverpool.savedState',
             ]
end
