cask 'jungle-disk-workgroup' do
  version '3.30.6'
  sha256 '9421d42248d1c3c66ba360b6970ea8143ab0c64391f971b6490d8913bab41570'

  url "https://downloads.jungledisk.com/jungledisk/JungleDiskWorkgroup#{version.no_dots}.dmg"
  appcast 'https://services.jungledisk.com/updatecheck.aspx?productid=1&platformid=2'
  name 'Jungle Disk Workgroup'
  homepage 'https://www.jungledisk.com/'

  auto_updates true

  app 'Jungle Disk Workgroup.app'

  zap trash: [
               '/Library/Caches/jungledisk/wg-cache',
               '/Library/Application Support/Jungle Disk Workgroup/',
               '/Library/PrivilegedHelperTools/com.jungledisk.JungleDiskWorkgroup.DaemonHelperTool',
               '/Library/LaunchDaemons/com.jungledisk.workgroupservice.plist',
               '/Library/LaunchDaemons/com.jungledisk.JungleDiskWorkgroup.DaemonHelperTool.plist',
               '~/Library/Application Support/Jungle Disk Workgroup/',
             ]
end
