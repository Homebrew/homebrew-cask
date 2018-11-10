cask 'amadeus-pro' do
  version '2.5.1'
  sha256 'd40cc747b90201379fc6509a8673644546e2ae80ef2d0e90e91e76c2bf2ab5a2'

  # amazonaws.com/AmadeusPro2 was verified as official when first introduced to the cask
  url 'http://s3.amazonaws.com/AmadeusPro2/AmadeusPro.zip'
  appcast 'https://s3.amazonaws.com/AmadeusPro2/versions.rtf'
  name 'Amadeus Pro'
  homepage 'https://www.hairersoft.com/pro.html'

  app 'Amadeus Pro.app'
end
