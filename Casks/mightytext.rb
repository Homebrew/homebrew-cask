cask 'mightytext' do
  version '3.88.20'
  sha256 '03c4dff76d6894f185cdde8fa9b601e0d9037eacdaf9589dd8ac78d28125389c'

  url "https://dl-desktop.mightytext.net/MightyText-#{version}.dmg"
  name 'MightyText'
  homepage 'https://mightytext.net/'

  app 'MightyText.app'
end
