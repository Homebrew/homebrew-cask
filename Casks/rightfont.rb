cask 'rightfont' do
  version '3.1.1'
  sha256 '517cfd4d7c0d1aee0bf52bd22127608361594236ddf588a8ff7a79537047097e'

  url "http://rightfontapp.com/downloads/#{version}/rightfont.zip"
  appcast 'http://rightfontapp.com/update/appcast.xml',
          :checkpoint => 'ddc6c269db42ba428c1a9d4cdb7e034387326d612598307c5c8c443114696226'
  name 'RightFont'
  homepage 'http://rightfontapp.com/'
  license :commercial

  depends_on :macos => '>= :yosemite'

  app 'RightFont.app'
end
