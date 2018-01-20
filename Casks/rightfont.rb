cask 'rightfont' do
  version '4.0'
  sha256 '3ac3ae780255c85785526bec5c47c158551c80d53f0f79eb9ed29e641970c2c1'

  url "https://rightfontapp.com/downloads/#{version}/rightfont.zip"
  appcast 'https://rightfontapp.com/update/appcast.xml',
          checkpoint: '2a67231befbdd24542c595d1e3315996309ccc7d1f799bb80c696828f51af0c7'
  name 'RightFont'
  homepage 'https://rightfontapp.com/'

  depends_on macos: '>= :yosemite'

  app 'RightFont.app'
end
