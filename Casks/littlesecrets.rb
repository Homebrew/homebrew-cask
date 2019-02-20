cask 'littlesecrets' do
  version '1.9.1'
  sha256 '231850150ff7f0a31ff6b1bc0b3f6502ca241f7c5e22e04b8521306b52a5aeee'

  url "https://www.mani.de/download/littlesecrets/LittleSecrets#{version}.dmg"
  appcast 'https://www.mani.de/de/littlesecrets/history.html'
  name 'LittleSecrets'
  homepage 'https://www.mani.de/de/littlesecrets/'

  app 'LittleSecrets.app'
end
