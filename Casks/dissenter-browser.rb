cask 'dissenter-browser' do
  version '0.65.118'
  sha256 '40f231e2d899b314ec17c716c341c1a6e44720e523c468cebc2258833f273cab'

  url "https://dissenter.com/dist/browser/#{version}/dissenter-browser-v#{version}.dmg"
  appcast 'https://dissenter.com/'
  name 'Dissenter'
  homepage 'https://dissenter.com/'

  auto_updates true

  app 'Dissenter Browser.app'
end
