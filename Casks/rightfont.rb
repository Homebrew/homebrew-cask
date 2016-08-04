cask 'rightfont' do
  version '3.2.4'
  sha256 '42dc554db588d81db7542c9b34376774459e67810033cc9151b5b761826147ab'

  url "https://rightfontapp.com/downloads/#{version}/rightfont.zip"
  appcast 'https://rightfontapp.com/update/appcast.xml',
          checkpoint: 'cb332b6ef7e816b0770cb8b8dd7ffa684c24b1d0b1bc1130d5d3615480cb365e'
  name 'RightFont'
  homepage 'https://rightfontapp.com/'
  license :commercial

  depends_on macos: '>= :yosemite'

  app 'RightFont.app'
end
