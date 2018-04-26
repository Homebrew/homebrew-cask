cask 'mendeley' do
  version '1.18'
  sha256 '4c0cb453e131949fc56bb84275964fa1ed29490deb577b063f8cb89d2fd3dcc2'

  url "https://desktop-download.mendeley.com/download/Mendeley-Desktop-#{version}-OSX-Universal.dmg"
  name 'Mendeley'
  homepage 'https://www.mendeley.com/'

  app 'Mendeley Desktop.app'
end
