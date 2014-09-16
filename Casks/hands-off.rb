class HandsOff < Cask
  version '2.2.0'
  sha256 'c64e24aaa347bc392f711840a77153d02f59876a5c1fb5969d1145de9760d154'

  url "https://www.oneperiodic.com/files/Hands%20Off!%20v#{version}.dmg"
  appcast 'http://www.metakine.com/sparkle/handsoff2/checkupdate.php'
  homepage 'http://www.metakine.com/products/handsoff/'

  app 'Hands Off!.app'
  zap :files => '~/Library/Preferences/com.metakine.handsoff.plist'
end
