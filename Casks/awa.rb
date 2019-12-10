cask 'awa' do
  version '1.5.3'
  sha256 'ce2a7f12c0fc331b90cea1ce6c6e962265c21cab46833a0b6e63aef230f92542'

  # download-d.awa.io/mac/stable was verified as official when first introduced to the cask
  url "https://download-d.awa.io/mac/stable/AWASetup-v#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://pd.awa.io/mac/stable/latest'
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
