cask 'clipy' do
  version '1.0.7'
  sha256 'f1d060033e6fb18bc8fbab33f35ff3d7245edf905a2018fe0fbbb25d80c65c67'

  url "https://github.com/Clipy/Clipy/releases/download/#{version}/Clipy_#{version}.dmg"
  appcast 'https://clipy-app.com/appcast.xml',
          checkpoint: 'baf6a41c333410ae8d4b43bffa5b5cd3c0b17c884cf5084d43217368da81db01'
  name 'Clipy'
  homepage 'https://clipy-app.com/'
  license :mit

  depends_on macos: '>= :mavericks'

  app 'Clipy.app'
end
