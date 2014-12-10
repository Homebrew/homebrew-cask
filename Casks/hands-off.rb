cask :v1 => 'hands-off' do
  version '2.2.0'
  sha256 'c64e24aaa347bc392f711840a77153d02f59876a5c1fb5969d1145de9760d154'

  url "https://www.oneperiodic.com/files/Hands%20Off!%20v#{version}.dmg"
  appcast 'http://www.metakine.com/sparkle/handsoff2/checkupdate.php',
          :sha256 => '1524e28fd5c28146adf04a00145623d716f4a0162f24d38f354dc49d7730af7d'
  homepage 'http://www.metakine.com/products/handsoff/'
  license :unknown    # todo: improve this machine-generated value

  app 'Hands Off!.app'

  zap :delete => '~/Library/Preferences/com.metakine.handsoff.plist'
end
