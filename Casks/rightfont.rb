cask :v1 => 'rightfont' do
  version :latest
  sha256 :no_check

  url 'http://rightfontapp.com/download/rightfont_beta.zip'
  name 'RightFont'
  appcast 'http://rightfontapp.com/update/appcast.xml',
          :sha256 => '9c35fd40ec7fb36ace330916c69cb6c16eca44448832f573d4979ad5e71096ef'
  homepage 'http://rightfontapp.com/'
  license :unknown

  depends_on :macos => '>= :yosemite'

  app 'RightFont.app'
end
