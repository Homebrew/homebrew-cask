cask 'dissenter-browser' do
  version '0.65.120'
  sha256 '7ca67db7eaaa733d960b29f2c233fecdc6128943fb67e9070baed6489aa90e60'

  url "https://dissenter.com/dist/browser/#{version}/dissenter-browser-v#{version}.dmg"
  appcast 'https://dissenter.com/'
  name 'Dissenter'
  homepage 'https://dissenter.com/'

  auto_updates true

  app 'Dissenter Browser.app'
end
