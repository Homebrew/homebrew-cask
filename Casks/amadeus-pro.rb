cask 'amadeus-pro' do
  version '2.5.1'
  sha256 'fc4189dbadc4da8078d586b9453170e84e974816000bf66e22dcd0e8612789a6'

  # amazonaws.com/AmadeusPro2 was verified as official when first introduced to the cask
  url 'http://s3.amazonaws.com/AmadeusPro2/AmadeusPro.zip'
  appcast 'https://s3.amazonaws.com/AmadeusPro2/versions.rtf'
  name 'Amadeus Pro'
  homepage 'https://www.hairersoft.com/pro.html'

  app 'Amadeus Pro.app'
end
