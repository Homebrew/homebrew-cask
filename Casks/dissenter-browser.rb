cask 'dissenter-browser' do
  version '0.66.99'
  sha256 '1192c8a0fae4621dd26fd7fbf65ed32ea07617c112f9ec65395b7ec3e67ff940'

  url "https://dissenter.com/dist/browser/#{version}/dissenter-browser-v#{version}.dmg"
  appcast 'https://dissenter.com/'
  name 'Dissenter'
  homepage 'https://dissenter.com/'

  auto_updates true

  app 'Dissenter Browser.app'
end
