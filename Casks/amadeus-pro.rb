cask 'amadeus-pro' do
  version '2.4'
  sha256 '78ebf488a0e601c360c711e7a774a9966d62daa582a79d64d66d0caa3883c075'

  # amazonaws.com/AmadeusPro2 was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/AmadeusPro2/AmadeusPro.dmg'
  appcast 'https://s3.amazonaws.com/AmadeusPro2/versions.rtf',
          checkpoint: '38736115564f25e33123e2fd223bfd50b19f7a01d7870048f7b9ec1b9987c785'
  name 'Amadeus Pro'
  homepage 'https://www.hairersoft.com/pro.html'

  app 'Amadeus Pro.app'
end
