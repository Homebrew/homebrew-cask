cask 'amadeus-pro' do
  version '2.7.2'
  sha256 '77e0dd96ad61a580c65412b011e5280e3850dc00b1a052bf9dd2a32fdf41bc8e'

  # s3.amazonaws.com/AmadeusPro2 was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/AmadeusPro2/AmadeusPro.zip'
  appcast 'https://www.hairersoft.com/pro.html'
  name 'Amadeus Pro'
  homepage 'https://www.hairersoft.com/pro.html'

  app 'Amadeus Pro.app'
end
