cask 'loaf' do
  version '1.0.1'
  sha256 '2e7cb4af89fcf0c56a74e94464fd931cc29fc4a2a0314fa4a011120c8fd354d3'

  # github.com/philipardeljan/getloaf/ was verified as official when first introduced to the cask
  url "https://github.com/philipardeljan/getloaf/releases/download/v#{version}/loaf.dmg"
  appcast 'https://github.com/philipardeljan/getmotion/releases.atom'
  name 'Loaf'
  homepage 'https://www.getmotion.io/'

  app 'Loaf.app'

  zap trash: [
               '~/Library/Application Support/Motion (beta)',
               '~/Library/Preferences/com.motionicons.studio.plist',
             ]
end
