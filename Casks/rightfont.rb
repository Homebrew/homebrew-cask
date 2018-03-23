cask 'rightfont' do
  version '4.8'
  sha256 '592a2acfd8058d5d4c44480535d5bc68fc4b169ea0470731d6fa1dd939878c4d'

  url "https://rightfontapp.com/downloads/#{version}/rightfont.zip"
  appcast 'https://rightfontapp.com/update/appcast.xml',
          checkpoint: 'cb390a2b2a27f7ce638aa66af23281c3a73e466b8f8bdfc325f008b7b7e8276b'
  name 'RightFont'
  homepage 'https://rightfontapp.com/'

  depends_on macos: '>= :yosemite'

  app 'RightFont.app'
end
