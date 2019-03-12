cask 'lightsoff' do
  version '1.0.6'
  sha256 'f674d8c35f006bafadb2950c84268aca2d3791a1e5e71ec474eeada60ff43fd9'

  url "https://www.lightsoff-app.com/s/LightsOff_#{version.dots_to_underscores}.zip"
  appcast 'https://gumroad.com/l/lightsoff/'
  name 'LightsOff'
  homepage 'https://gumroad.com/l/lightsoff/'

  depends_on macos: '>= :mojave'

  app 'LightsOff.app'
end
