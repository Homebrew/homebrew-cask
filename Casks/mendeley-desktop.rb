cask 'mendeley-desktop' do
  version '1.16'
  sha256 '88067c1fd9c3d7dea4f5abfa539445d338984dbbcee2c369e0438862b0d38cf7'

  url "http://desktop-download.mendeley.com/download/Mendeley-Desktop-#{version}-OSX-Universal.dmg"
  appcast "https://www.mendeley.com/autoupdates/from-#{version}/Mac-x64/changelog.html",
          checkpoint: '8b29ffb92333dd292aff51c814e9a3c61a402ab5c58ddbd7684493a4d00fda2e'
  name 'Mendeley'
  homepage 'https://www.mendeley.com/'
  license :gratis

  app 'Mendeley Desktop.app'
end
