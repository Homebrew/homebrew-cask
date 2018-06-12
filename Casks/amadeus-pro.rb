cask 'amadeus-pro' do
  version '2.4.7'
  sha256 'da059900ac42d53e4951cc9d76d53a2c006c5f138d1bf1f37fc5cf3dc9e0a746'

  # amazonaws.com/AmadeusPro2 was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/AmadeusPro2/AmadeusPro.dmg'
  appcast 'https://s3.amazonaws.com/AmadeusPro2/versions.rtf',
          checkpoint: '38736115564f25e33123e2fd223bfd50b19f7a01d7870048f7b9ec1b9987c785'
  name 'Amadeus Pro'
  homepage 'https://www.hairersoft.com/pro.html'

  app 'Amadeus Pro.app'
end
