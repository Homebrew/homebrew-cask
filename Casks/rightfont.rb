cask 'rightfont' do
  version '4.10'
  sha256 'c7a7c81f7b0b72b2a8e03de19a6004cf52742e3b15791d0a832c1bd8c7e553a9'

  url "https://rightfontapp.com/downloads/#{version}/rightfont.zip"
  appcast 'https://rightfontapp.com/update/appcast.xml',
          checkpoint: 'bb539eda76df460391f54a710839fea9e34e8f012dfc01ce25dd6d9141bedcd9'
  name 'RightFont'
  homepage 'https://rightfontapp.com/'

  depends_on macos: '>= :yosemite'

  app 'RightFont.app'
end
