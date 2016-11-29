cask 'rightfont' do
  version '3.2.5'
  sha256 'd994c7907e3e68b7d7985cb52859d46d5ddfc261fc76d255a6b7b3a4b73b799f'

  url "https://rightfontapp.com/downloads/#{version}/rightfont.zip"
  appcast 'https://rightfontapp.com/update/appcast.xml',
          checkpoint: '2aeedf7f798fb76d5cbe5d992c6d9652072b2129d5e68eae06c11bc018c24247'
  name 'RightFont'
  homepage 'https://rightfontapp.com/'

  depends_on macos: '>= :yosemite'

  app 'RightFont.app'
end
