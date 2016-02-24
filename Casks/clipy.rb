cask 'clipy' do
  version '1.0.7'
  sha256 'f1d060033e6fb18bc8fbab33f35ff3d7245edf905a2018fe0fbbb25d80c65c67'

  url "https://github.com/Clipy/Clipy/releases/download/#{version}/Clipy_#{version}.dmg"
  appcast 'https://clipy-app.com/appcast.xml',
          checkpoint: '70ea04dcd1f8bf2f7b6c5938cbb13d720f707c309ce95a565f2a435fcd8746cb'
  name 'Clipy'
  homepage 'https://clipy-app.com/'
  license :mit

  depends_on macos: '>= :mavericks'

  app 'Clipy.app'
end
