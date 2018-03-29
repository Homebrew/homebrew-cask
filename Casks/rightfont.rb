cask 'rightfont' do
  version '4.10'
  sha256 '9ff22c538b96cc928dca659abc63158be5f8b156c6fdef776392c0cbd6e2ab84'

  url "https://rightfontapp.com/downloads/#{version}/rightfont.zip"
  appcast 'https://rightfontapp.com/update/appcast.xml',
          checkpoint: 'dca3643a82ee35c88f8e7f0e4a075df0a7c92dfc7c97bab35d04a6898673c701'
  name 'RightFont'
  homepage 'https://rightfontapp.com/'

  depends_on macos: '>= :yosemite'

  app 'RightFont.app'
end
