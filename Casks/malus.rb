cask 'malus' do
  version '1.0.4'
  sha256 '5692f464eb11411265cab8f042bf8f30261777c360435870d09db8d9f9ca594e'

  # malus.s3cdn.net/ was verified as official when first introduced to the cask
  url "https://malus.s3cdn.net/uploads/Malus-mac-#{version.no_dots}.dmg"
  appcast 'https://api.getmalus.com/api/checkDesktopUpdate?type=mac'
  name 'Malus'
  homepage 'https://getmalus.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Malus.app'

  zap trash: [
               '/Library/Application Support/Malus',
               '~/Library/Application Support/Malus',
               '~/Library/Application Support/com.getmalus.malus',
               '~/Library/Logs/com.getmalus.malus',
               '~/Library/Caches/com.getmalus.malus',
               '~/Library/Preferences/com.getmalus.malus.plist',
               '~/Library/Saved Application State/com.getmalus.malus.savedState',
             ]
end
