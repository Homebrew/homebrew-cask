cask 'rectangle' do
  version '0.15'
  sha256 '6cfb7d95c37a3b43c1d348bd95ef4a77a9892df7d0b3161690ccbc894479af45'

  # github.com/rxhanson/Rectangle/releases/download/v was verified as official when first introduced to the cask
  url "https://github.com/rxhanson/Rectangle/releases/download/v#{version}/Rectangle#{version}.dmg"
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
