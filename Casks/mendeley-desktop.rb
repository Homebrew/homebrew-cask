cask 'mendeley-desktop' do
  version '1.17.6'
  sha256 'a42ab1332911a91e4d986b105dd0373e7380c0daf95f610941158c899cc842a3'

  url "http://desktop-download.mendeley.com/download/Mendeley-Desktop-#{version}-OSX-Universal.dmg"
  name 'Mendeley'
  homepage 'https://www.mendeley.com/'

  app 'Mendeley Desktop.app'
end
