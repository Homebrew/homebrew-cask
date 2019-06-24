cask 'dissenter-browser' do
  version '0.65.121'
  sha256 'b396651768be214015c190a197f40b928ec012d7302f95fcde3a598c6d5bd6d0'

  url "https://dissenter.com/dist/browser/#{version}/dissenter-browser-v#{version}.dmg"
  appcast 'https://dissenter.com/'
  name 'Dissenter'
  homepage 'https://dissenter.com/'

  auto_updates true

  app 'Dissenter Browser.app'
end
