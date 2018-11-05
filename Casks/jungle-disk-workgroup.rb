cask 'jungle-disk-workgroup' do
  version '3.30.1'
  sha256 'fe6f76a675d3a5fde061d615eafd8b31e085d597604c2f5381323e4fa734ced1'

  url "https://downloads.jungledisk.com/jungledisk/JungleDiskWorkgroup#{version.no_dots}.dmg"
  appcast 'https://www.jungledisk.com/downloads/'
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
