cask 'mendeley-desktop' do
  version '1.17.4'
  sha256 '7f562774bc73eeed7418fb6240e32edb7b18784b12481a732f027554e2253066'

  url "http://desktop-download.mendeley.com/download/Mendeley-Desktop-#{version}-OSX-Universal.dmg"
  name 'Mendeley'
  homepage 'https://www.mendeley.com/'

  app 'Mendeley Desktop.app'
end
