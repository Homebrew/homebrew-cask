cask 'dissenter-browser' do
  version '67.62'
  sha256 '66c00875864cc101a8301dcbadd3863dbc84e775d2b7cbc5728e6da6686c9ecd'

  url "https://dissenter.com/dist/browser/dissenter-browser-v#{version}.dmg"
  appcast 'https://dissenter.com/'
  name 'Dissenter'
  homepage 'https://dissenter.com/'

  auto_updates true

  app 'Dissenter Browser.app'
end
