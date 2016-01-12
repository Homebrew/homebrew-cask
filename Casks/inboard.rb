cask 'inboard' do
  version '1.0.6-279'
  sha256 '071a85c42b26d15387d6ab03b110823871c20234b5cf05b464829bfdb40eb7b1'

  url "http://inboardapp.com/trial/Inboard-#{version}.zip"
  appcast 'http://inboardapp.com/appcast.xml',
          :sha256 => '9d7899a2b74f341f5b2ef6f5ac10e4c4f4882f24fc73a26fd5c689c0067848b2'
  name 'Inboard'
  homepage 'http://inboardapp.com'
  license :commercial

  app 'Inboard.app'
end
