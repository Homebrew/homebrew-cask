cask 'amadeus-pro' do
  version '2.7.1'
  sha256 'a5b63056d8e2fe222a7e1aeef5f875b32a04d1e105e35e3a1d4751581bc41be6'

  # s3.amazonaws.com/AmadeusPro2 was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/AmadeusPro2/AmadeusPro.zip'
  appcast 'https://www.hairersoft.com/pro.html'
  name 'Amadeus Pro'
  homepage 'https://www.hairersoft.com/pro.html'

  app 'Amadeus Pro.app'
end
