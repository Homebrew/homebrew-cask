cask 'hands-off' do
  version '3.1.5'
  sha256 '2975e091aa94e71ae75dbf9490db566ee5938630bc793d8a99a8281ab9f48847'

  url "https://www.oneperiodic.com/files/Hands%20Off!%20v#{version}.dmg"
  appcast "https://www.oneperiodic.com/handsoff#{version.major}.xml",
          checkpoint: '8ab51e82722f6cffbfaad89a554111762c3c14bc9163a6a6afdf4a477c53368c'
  name 'Hands Off!'
  homepage 'https://www.oneperiodic.com/products/handsoff/'

  app 'Hands Off!.app'

  zap delete: '~/Library/Preferences/com.metakine.handsoff.plist'
end
