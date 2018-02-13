cask 'awa' do
  version '1.5.0'
  sha256 '97664b9ff891894cca55550671718171ee71dce05446de0271ed51e82debad50'

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
