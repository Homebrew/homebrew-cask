cask 'jungle-disk-workgroup' do
  version '3.23.0'
  sha256 'd5b65092ecab6c321de4dfd13f6c2040910438f65d5453ff8b43df9eed787036'

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
