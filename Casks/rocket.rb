cask 'rocket' do
  version :latest
  sha256 :no_check

  # dl.devmate.com/net.matthewpalmer.Rocket was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/net.matthewpalmer.Rocket/Rocket.dmg'
  name 'Rocket'
  homepage 'http://matthewpalmer.net/rocket/'

  app 'Rocket.app'

  zap trash: [
               '~/Library/Application Support/Rocket',
               '~/Library/Preferences/net.matthewpalmer.Rocket.plist',
             ]
end
