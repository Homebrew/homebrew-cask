cask 'jungle-disk-workgroup' do
  version '3.30.2'
  sha256 '60030647ecba48b9fbc10242c9fd5428d0c706394ea64609d2cbeabeaf4c917e'

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
