cask 'littlesecrets' do
  version '1.9.2'
  sha256 '1cf0ffb294bc7b0d3676dfaa518e659c312fc381d5f28ecf2bb383fa24b44de5'

  url "https://www.mani.de/download/littlesecrets/LittleSecrets#{version}.dmg"
  appcast 'https://www.mani.de/de/littlesecrets/history.html'
  name 'LittleSecrets'
  homepage 'https://www.mani.de/de/littlesecrets/'

  app 'LittleSecrets.app'
end
