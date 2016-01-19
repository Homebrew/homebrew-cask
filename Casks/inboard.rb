cask 'inboard' do
  version '1.0.6-279'
  sha256 '071a85c42b26d15387d6ab03b110823871c20234b5cf05b464829bfdb40eb7b1'

  url "http://inboardapp.com/trial/Inboard-#{version}.zip"
  appcast 'http://inboardapp.com/appcast.xml',
          checkpoint: '3ea1e5f4a67d78d4b434124c8efd4eaaa098b33c120a683173f2d3796dd624ec'
  name 'Inboard'
  homepage 'http://inboardapp.com'
  license :commercial

  app 'Inboard.app'
end
