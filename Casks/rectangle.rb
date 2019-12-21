cask 'rectangle' do
  version '0.14'
  sha256 '668e229c6dce470ec34f00d7b98e0643c8ff1b3237cbc2d52e1f1a70ebf81311'

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
