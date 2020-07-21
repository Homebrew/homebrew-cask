cask 'rectangle' do
  version '0.31'
  sha256 'f4542187f4bdc15f53b4cd53825f7a141972e572b9da9821ea999fd6fc6a8df0'

  # github.com/rxhanson/Rectangle/ was verified as official when first introduced to the cask
  url "https://github.com/rxhanson/Rectangle/releases/download/v#{version}/Rectangle#{version}.dmg"
  appcast 'https://www.rectangleapp.com/downloads/updates.xml'
  name 'Rectangle'
  homepage 'https://rectangleapp.com/'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app 'Rectangle.app'

  uninstall quit: 'com.knollsoft.Rectangle'

  zap trash: [
               '~/Library/Application Scripts/com.knollsoft.RectangleLauncher',
               '~/Library/Application Support/Rectangle',
               '~/Library/Caches/com.knollsoft.Rectangle',
               '~/Library/Containers/com.knollsoft.RectangleLauncher',
               '~/Library/Preferences/com.knollsoft.Rectangle.plist',
             ]
end
