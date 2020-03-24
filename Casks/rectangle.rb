cask 'rectangle' do
  version '0.23'
  sha256 'c3721b55986e64cfd652d469f16477dcb48a74ccf64425eea3a93b1babb91636'

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
