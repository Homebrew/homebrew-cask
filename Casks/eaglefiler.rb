cask 'eaglefiler' do
  version '1.8.6'
  sha256 'bfdbdd9b7ddde9488dca7239ad38ccc37ca81a2121febf93c1b519326c26d860'

  url "https://c-command.com/downloads/EagleFiler-#{version}.dmg"
  appcast 'https://c-command.com/eaglefiler/help/version-history'
  name 'EagleFiler'
  homepage 'https://c-command.com/eaglefiler/'

  app 'EagleFiler.app'
end
