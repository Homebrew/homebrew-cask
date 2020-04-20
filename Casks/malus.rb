cask 'malus' do
  version '1.0.3'
  sha256 '50fa7de2ef261825602ed9d942faeb520644c682448e7de1d890d3792aca45b4'

  # malus.s3cdn.net/ was verified as official when first introduced to the cask
  url "https://malus.s3cdn.net/uploads/Malus-mac-#{version.dots_to_underscores}.dmg"
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
