cask 'malus' do
  version '1.0.5'
  sha256 '7771d5026201b8b47a648aa115f1d628ea0fcc27e13db8a7afd5f4c5233558c9'

  # malus.s3cdn.net/ was verified as official when first introduced to the cask
  url "https://malus.s3cdn.net/uploads/Malus-#{version.no_dots}-mac.dmg"
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
