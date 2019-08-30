cask 'rectangle' do
  version '0.4'
  sha256 '07f8337bfb0db2b5735d065be9bceb136c57b8affe61025b8b3648c88b42dd45'

  url "https://rectangleapp.com/downloads/Rectangle#{version}.dmg"
  appcast 'https://www.rectangleapp.com/downloads/updates.xml'
  name 'Rectangle'
  homepage 'https://rectangleapp.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Rectangle.app'

  zap trash: [
               '~/Library/Preferences/com.knollsoft.Rectangle',
               '~/Library/Application Support/Rectangle',
               '~/Library/Caches/com.knollsoft.Rectangle',
             ]
end
