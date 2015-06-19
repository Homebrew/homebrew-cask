cask :v1 => 'hands-off' do
  version '2.3.4'
  sha256 '225ad29b34a7014dfd0f334f269d38ff4d820aa0248248dba76356eaa2495c7e'

  url "https://www.oneperiodic.com/files/Hands%20Off!%20v#{version}.dmg"
  appcast 'http://www.metakine.com/sparkle/handsoff2/checkupdate.php',
          :sha256 => '1b948ddb214ba0bc85016341a77b389eabc70b77f3c43c24081776880396f03c'
  name 'Hands Off!'
  homepage 'http://www.oneperiodic.com/products/handsoff/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Hands Off!.app'

  zap :delete => '~/Library/Preferences/com.metakine.handsoff.plist'
end
