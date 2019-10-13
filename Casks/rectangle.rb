cask 'rectangle' do
  version '0.8'
  sha256 '8df973116e5616b325eb54add9fd54f7173ab69567d9db3a4aa272f5aabc79c9'

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
