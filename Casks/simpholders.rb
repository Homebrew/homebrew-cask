cask 'simpholders' do
  version '3.0.4,2220'
  sha256 '341a6f795e3ae10359361bc758c0d36672acee08ef8bbb0b3d34d18d2d2c2030'

  url "https://simpholders.com/site/assets/files/#{version.after_comma}/simpholders_#{version.before_comma.dots_to_underscores}.dmg"
  appcast 'https://simpholders.com/releases/'
  name 'SimPholders'
  homepage 'https://simpholders.com/'

  app 'SimPholders.app'
end
