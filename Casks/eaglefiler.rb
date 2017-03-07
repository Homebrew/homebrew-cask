cask 'eaglefiler' do
  version '1.7.4'
  sha256 '8b417c2f923bd3c6b5a4cb1c153679dd834f217a2d60ed7415d150ecb0d73daf'

  url "https://c-command.com/downloads/EagleFiler-#{version}.dmg"
  name 'EagleFiler'
  homepage 'https://c-command.com/eaglefiler/'

  app 'EagleFiler.app'
end
