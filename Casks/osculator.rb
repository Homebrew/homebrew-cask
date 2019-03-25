cask 'osculator' do
  version '3.3.0-15-ge07478ab,7ab922ce-a33a-48b3-8e8f-070d064ec1db'
  sha256 '387b57aa64dcc7d21c525c862b28ea22063213de80d53111a855b3163040a65c'

  # distribution.wildora.net was verified as official when first introduced to the cask
  url "https://distribution.wildora.net/products/osculator-v#{version.major}/revisions/#{version.after_comma}/osculator-#{version.before_comma}.dmg"
  appcast 'https://osculator.net/downloadthanks.php?stable'
  name 'OSCulator'
  homepage 'https://osculator.net/'

  app 'OSCulator.app'
end
