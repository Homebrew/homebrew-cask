cask 'movelinks' do
  version '1.4.3'
  sha256 '8cb3cf46c18f3df45f35d72c39d1755d79955f77b32fb06d6c867b957bede473'

  # d1c229iib3zm7m.cloudfront.net was verified as official when first introduced to the cask
  url "https://d1c229iib3zm7m.cloudfront.net/mac/Moveslink2_#{version.dots_to_underscores}.dmg"
  appcast 'https://d1c229iib3zm7m.cloudfront.net/mac/appcast.xml',
          checkpoint: '5cab6fe342d0d05df460b010eab2ba19491a2382f3decb6cb2b2d7803b7e6ef9'
  name 'Movelinks'
  homepage 'https://www.movescount.com/connect/moveslinkmac/Suunto_Ambit'

  auto_updates true

  app 'Moveslink2.app'

  uninstall login_item: 'Movelinks2'
end
