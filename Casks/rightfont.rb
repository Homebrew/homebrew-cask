cask 'rightfont' do
  version '4.9'
  sha256 '3965c175f6dc9e8974fad5545d9865bc8be2680b7f5794835e697d9ddec954f4'

  url "https://rightfontapp.com/downloads/#{version}/rightfont.zip"
  appcast 'https://rightfontapp.com/update/appcast.xml',
          checkpoint: 'b504f4d505faeed1d665338efe0497f39deb23625dc49a51701b9e5753a14a2c'
  name 'RightFont'
  homepage 'https://rightfontapp.com/'

  depends_on macos: '>= :yosemite'

  app 'RightFont.app'
end
