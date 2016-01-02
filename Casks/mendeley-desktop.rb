cask 'mendeley-desktop' do
  version '1.15.2'
  sha256 'ddfef2ad37f354e63eb2b9d5d12e95b40a42c594388386630940f67d8920d6a2'

  url "http://desktop-download.mendeley.com/download/Mendeley-Desktop-#{version}-OSX-Universal.dmg"
  name 'Mendeley'
  homepage 'https://www.mendeley.com/'
  license :gratis

  app 'Mendeley Desktop.app'
end
