cask 'rectangle' do
  version '0.22'
  sha256 'b85a776647d8fb01155003bfd1d9a5d90a3120fae11edf2895ac22ccdaef90fe'

  # github.com/rxhanson/Rectangle/releases/download/v was verified as official when first introduced to the cask
  url "https://github.com/rxhanson/Rectangle/releases/download/v#{version}/Rectangle#{version}.dmg"
  appcast 'https://www.rectangleapp.com/downloads/updates.xml'
  name 'Rectangle'
  homepage 'https://rectangleapp.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Rectangle.app'

  zap trash: [
               '~/Library/Preferences/com.knollsoft.Rectangle.plist',
               '~/Library/Application Support/Rectangle',
               '~/Library/Caches/com.knollsoft.Rectangle',
             ]
end
