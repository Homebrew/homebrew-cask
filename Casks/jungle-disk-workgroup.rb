cask 'jungle-disk-workgroup' do
  version '3.20.0'
  sha256 '78e218871939e2786e7d534904707daf651faef35f64f0a1a861823e89ce0710'

  url "https://downloads.jungledisk.com/jungledisk/JungleDiskWorkgroup#{version.no_dots}.dmg"
  appcast 'https://services.jungledisk.com/updatecheck.aspx',
          checkpoint: '359d56d22543c5c883cf7d2139a55a26ac385e50cbf09ff4361dd9b2f40d7369'
  name 'Jungle Disk Workgroup'
  homepage 'https://www.jungledisk.com'

  auto_updates true

  app 'Jungle Disk Workgroup.app'

  zap delete: [
                '/Library/Caches/jungledisk/wg-cache',
                '/Library/Application Support/Jungle Disk Workgroup/',
                '/Library/PrivilegedHelperTools/com.jungledisk.JungleDiskWorkgroup.DaemonHelperTool',
                '/Library/LaunchDaemons/com.jungledisk.workgroupservice.plist',
                '/Library/LaunchDaemons/com.jungledisk.JungleDiskWorkgroup.DaemonHelperTool.plist',
                '~/Library/Application Support/Jungle Disk Workgroup/',
              ]
end
