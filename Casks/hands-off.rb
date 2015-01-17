cask :v1 => 'hands-off' do
  version '2.3.3'
  sha256 '5df3de6b11df0e48ecbe333e475af1e196aa2fc7652e59fa74f9a09c1d199bee'

  url "https://www.oneperiodic.com/files/Hands%20Off!%20v#{version}.dmg"
  appcast 'http://www.metakine.com/sparkle/handsoff2/checkupdate.php',
          :sha256 => '1524e28fd5c28146adf04a00145623d716f4a0162f24d38f354dc49d7730af7d'
  homepage 'http://www.oneperiodic.com/products/handsoff/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Hands Off!.app'

  zap :delete => '~/Library/Preferences/com.metakine.handsoff.plist'
end
