cask 'rocket' do
  version '1.4,45:1516764069'
  sha256 '3d1df422ced7200610ce929369c1851e6328b83069829687e21f618ebf829d95'

  # dl.devmate.com/net.matthewpalmer.Rocket was verified as official when first introduced to the cask
  url "https://dl.devmate.com/net.matthewpalmer.Rocket/#{version.after_comma.before_colon}/#{version.after_colon}/Rocket-#{version.after_comma.before_colon}.zip"
  appcast 'https://updates.devmate.com/net.matthewpalmer.Rocket.xml'
  name 'Rocket'
  homepage 'http://matthewpalmer.net/rocket/'

  app 'Rocket.app'

  zap trash: [
               '~/Library/Application Support/Rocket',
               '~/Library/Preferences/net.matthewpalmer.Rocket.plist',
             ]
end
