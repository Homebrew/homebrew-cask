cask 'osculator' do
  version '3.1.2-63-gb9634423,2356a19f-47c4-4689-9f3b-5f5c83d6c85f'
  sha256 '5868d7dcc1a6121945ee69286fc26e1c70a04e4e118e5ec05a877d74a8a2c722'

  # distribution.wildora.net was verified as official when first introduced to the cask
  url "https://distribution.wildora.net/products/osculator-v#{version.major}/revisions/#{version.after_comma}/osculator-#{version.before_comma}.dmg"
  appcast 'https://osculator.net/downloadthanks.php?stable',
          checkpoint: '6ee719500cb0df48815239eb88f9740218e6b9b14e8d25992825f387fb64578c'
  name 'OSCulator'
  homepage 'https://osculator.net/'

  app 'OSCulator.app'
end
