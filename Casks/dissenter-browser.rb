cask 'dissenter-browser' do
  version '0.66.100'
  sha256 '0e8d63cafa9148cdb6685c2e061fb925e2e87efbed33d1245ff56b22df841b5a'

  url "https://dissenter.com/dist/browser/#{version}/dissenter-browser-v#{version}.dmg"
  appcast 'https://dissenter.com/'
  name 'Dissenter'
  homepage 'https://dissenter.com/'

  auto_updates true

  app 'Dissenter Browser.app'
end
