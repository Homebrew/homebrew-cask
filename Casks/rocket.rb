cask 'rocket' do
  version '1.5,53:1553802737'
  sha256 '3241060ebedcb2e1ef6c2be623aa56cc0f3f56eb7b5e86c6e6b4b00632f994ed'

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
