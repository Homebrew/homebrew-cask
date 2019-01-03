cask 'rocket' do
  version '1.4.2,50:1544242388'
  sha256 'f6ab0751c50c305a0f095c40e0317772a9456b7e9ce28f890bfa6940d0993276'

  # dl.devmate.com/net.matthewpalmer.Rocket was verified as official when first introduced to the cask
  url "https://dl.devmate.com/net.matthewpalmer.Rocket/#{version.after_comma.before_colon}/#{version.after_colon}/Rocket-#{version.after_comma.before_colon}.zip"
  appcast 'https://updates.devmate.com/net.matthewpalmer.Rocket.xml'
  name 'Rocket'
  homepage 'https://matthewpalmer.net/rocket/'

  app 'Rocket.app'

  uninstall login_item: 'Rocket'

  zap trash: [
               '~/Library/Application Support/Rocket',
               '~/Library/Preferences/net.matthewpalmer.Rocket.plist',
             ]
end
