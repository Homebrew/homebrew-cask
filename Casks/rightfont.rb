cask :v1 => 'rightfont' do
  version '2.2.2'
  sha256 '94acffb9c175aec69f1c852aa7624e71dbdcd3d650755dc87572a8fb09d65534'

  url "http://rightfontapp.com/downloads/#{version}/rightfont.zip"
  name 'RightFont'
  appcast 'http://rightfontapp.com/update/appcast.xml',
          :sha256 => 'd0924090f0aabafb201065b742065fa12dbbf30f4eebe81a519fc7ae4fa45f47'
  homepage 'http://rightfontapp.com/'
  license :commercial

  depends_on :macos => '>= :yosemite'

  app 'RightFont.app'
end
