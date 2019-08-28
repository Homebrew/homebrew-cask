cask 'mendeley' do
  version '1.19.4'
  sha256 'bd9584152eb0bd375ce98b874981a44d87435d0e7b5a411734d9db63f48f7260'

  url "https://desktop-download.mendeley.com/download/Mendeley-Desktop-#{version}-OSX-Universal.dmg"
  name 'Mendeley'
  homepage 'https://www.mendeley.com/'

  app 'Mendeley Desktop.app'
end
