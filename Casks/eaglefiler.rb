cask 'eaglefiler' do
  version '1.8.4'
  sha256 '7933b9f74f5917ac2e0f59d7f81dead4c2131c298ac1faefa831b21fd52a768b'

  url "https://c-command.com/downloads/EagleFiler-#{version}.dmg"
  appcast 'https://c-command.com/eaglefiler/help/version-history'
  name 'EagleFiler'
  homepage 'https://c-command.com/eaglefiler/'

  app 'EagleFiler.app'
end
