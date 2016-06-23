cask 'rightfont' do
  version '3.2.3'
  sha256 'a1b8e65a19ef6a913b12864e7b075e50e33318bf56f459e9ee27f0945f9f5db9'

  url "http://rightfontapp.com/downloads/#{version}/rightfont.zip"
  appcast 'http://rightfontapp.com/update/appcast.xml',
          checkpoint: '5869af418c2eb753f19d2d5506dd99048ccdcf752459fbcd5603cbe7cb6b7a7a'
  name 'RightFont'
  homepage 'http://rightfontapp.com/'
  license :commercial

  depends_on macos: '>= :yosemite'

  app 'RightFont.app'
end
