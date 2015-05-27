cask :v1 => 'rightfont' do
  version :latest
  sha256 :no_check

  url 'http://rightfontapp.com/download/rightfont_beta.zip'
  name 'RightFont'
  appcast 'http://rightfontapp.com/update/appcast.xml',
          :sha256 => '191f0fe73366e1209be47c2d1029a128c75635605c529b7bb91bfdf208f47d1d'
  homepage 'http://rightfontapp.com/'
  license :unknown

  app 'RightFont.app'
end
