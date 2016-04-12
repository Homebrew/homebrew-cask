cask 'mendeley-desktop' do
  version '1.16.1'
  sha256 '5997893bef7721c5ee8a5d55ae1ae8e470eee86a19cb2bb924a2d4492c6bfca5'

  url "http://desktop-download.mendeley.com/download/Mendeley-Desktop-#{version}-OSX-Universal.dmg"
  name 'Mendeley'
  homepage 'https://www.mendeley.com/'
  license :gratis

  app 'Mendeley Desktop.app'
end
