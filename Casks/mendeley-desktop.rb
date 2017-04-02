cask 'mendeley-desktop' do
  version '1.17.9'
  sha256 '5575650254bb69052bd0940610fbcd38be4803f86e890b5a3f2fba71acf84283'

  url "http://desktop-download.mendeley.com/download/Mendeley-Desktop-#{version}-OSX-Universal.dmg"
  name 'Mendeley'
  homepage 'https://www.mendeley.com/'

  app 'Mendeley Desktop.app'
end
