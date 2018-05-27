cask 'mendeley' do
  version '1.19'
  sha256 '6c9f79d5f9b1385fed8daa7a65c137e8a8c67a7b3ad9552956ea0ce723d59fe6'

  url "https://desktop-download.mendeley.com/download/Mendeley-Desktop-#{version}-OSX-Universal.dmg"
  name 'Mendeley'
  homepage 'https://www.mendeley.com/'

  app 'Mendeley Desktop.app'
end
