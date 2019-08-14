cask 'rocket' do
  version '1.5.1,59:1565911546'
  sha256 '964f74383f045c4fba107a9bdf43bdc880c1c1a6f2321c8cf85534baf0f54811'

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
