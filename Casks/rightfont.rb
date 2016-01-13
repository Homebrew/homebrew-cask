cask 'rightfont' do
  version '3.1.1'
  sha256 '517cfd4d7c0d1aee0bf52bd22127608361594236ddf588a8ff7a79537047097e'

  url "http://rightfontapp.com/downloads/#{version}/rightfont.zip"
  appcast 'http://rightfontapp.com/update/appcast.xml',
          :checkpoint => '7fff00efc8097e28227204cae2cf8477bc36880370534a73d09baafb3ef7df16'
  name 'RightFont'
  homepage 'http://rightfontapp.com/'
  license :commercial

  depends_on :macos => '>= :yosemite'

  app 'RightFont.app'
end
