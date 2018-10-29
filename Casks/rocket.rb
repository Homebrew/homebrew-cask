cask 'rocket' do
  version '1.4.1,48:1538003507'
  sha256 '3121ef948d5fecb399634ea0687a6fc526429d631b4fc1e828028e62a2124a91'

  # dl.devmate.com/net.matthewpalmer.Rocket was verified as official when first introduced to the cask
  url "https://dl.devmate.com/net.matthewpalmer.Rocket/#{version.after_comma.before_colon}/#{version.after_colon}/Rocket-#{version.after_comma.before_colon}.zip"
  appcast 'https://updates.devmate.com/net.matthewpalmer.Rocket.xml'
  name 'Rocket'
  homepage 'https://matthewpalmer.net/rocket/'

  app 'Rocket.app'

  zap trash: [
               '~/Library/Application Support/Rocket',
               '~/Library/Preferences/net.matthewpalmer.Rocket.plist',
             ]
end
