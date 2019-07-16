cask 'eaglefiler' do
  version '1.8.8'
  sha256 '959150aa38a6c3f63cec43840bf9190f97645702f26efd3b14d17bd46bb7ba63'

  url "https://c-command.com/downloads/EagleFiler-#{version}.dmg"
  appcast 'https://c-command.com/eaglefiler/help/version-history'
  name 'EagleFiler'
  homepage 'https://c-command.com/eaglefiler/'

  app 'EagleFiler.app'
end
