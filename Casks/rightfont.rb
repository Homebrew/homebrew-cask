cask 'rightfont' do
  version '4.10'
  sha256 '9ff22c538b96cc928dca659abc63158be5f8b156c6fdef776392c0cbd6e2ab84'

  url "https://rightfontapp.com/downloads/#{version}/rightfont.zip"
  appcast 'https://rightfontapp.com/update/appcast.xml'
  name 'RightFont'
  homepage 'https://rightfontapp.com/'

  depends_on macos: '>= :yosemite'

  app 'RightFont.app'
end
