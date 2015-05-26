cask :v1 => 'hands-off' do
  version '2.3.4'
  sha256 '225ad29b34a7014dfd0f334f269d38ff4d820aa0248248dba76356eaa2495c7e'

  url "https://www.oneperiodic.com/files/Hands%20Off!%20v#{version}.dmg"
  appcast 'http://www.metakine.com/sparkle/handsoff2/checkupdate.php',
          :sha256 => '1524e28fd5c28146adf04a00145623d716f4a0162f24d38f354dc49d7730af7d'
  name 'Hands Off!'
  homepage 'http://www.oneperiodic.com/products/handsoff/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Hands Off!.app'

  zap :delete => '~/Library/Preferences/com.metakine.handsoff.plist'
end
