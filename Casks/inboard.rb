cask 'inboard' do
  version '1.0.6-279'
  sha256 '071a85c42b26d15387d6ab03b110823871c20234b5cf05b464829bfdb40eb7b1'

  url "http://inboardapp.com/trial/Inboard-#{version}.zip"
  name 'Inboard'
  appcast 'http://inboardapp.com/appcast.xml',
          :sha256 => 'cf1fe2fce047c5a5f9434de1e314a791ddc0d9c9c960dc1608902a8c7780835a'
  homepage 'http://inboardapp.com'
  license :commercial

  app 'Inboard.app'
end
