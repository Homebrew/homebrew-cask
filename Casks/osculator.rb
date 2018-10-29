cask 'osculator' do
  version '3.2.2,84f792ed-e991-4279-9738-7bf0b2d3a029'
  sha256 '1fa1407b1bd19e05429ac74a3161bc7ec795798cc8ca6f8112b743855bc4ba2b'

  # distribution.wildora.net was verified as official when first introduced to the cask
  url "https://distribution.wildora.net/products/osculator-v#{version.major}/revisions/#{version.after_comma}/osculator-#{version.before_comma}.dmg"
  appcast 'https://osculator.net/downloadthanks.php?stable'
  name 'OSCulator'
  homepage 'https://osculator.net/'

  app 'OSCulator.app'
end
