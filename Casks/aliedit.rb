cask :v1 => 'aliedit' do
  version :latest
  sha256 :no_check

  url 'https://d.alipayobjects.com/sec/edit/wkaliedit.dmg'
  homepage 'https://110.alipay.com/sc/aliedit/intro.htm'
  license :unknown

  pkg 'installer.pkg'

  uninstall_preflight do
    system '/usr/bin/sudo', '-E', '--', '/bin/launchctl', 'unload', '/Library/LaunchDaemons/com.alipay.DispatcherService.plist'
  end

  uninstall :pkgutil => 'com.alipay.www',
            :delete => [
                '/Library/Application Support/Alipay',
                '/Library/Google/Chrome/NativeMessagingHosts/com.alipay.cert.json',
                '/Library/Google/Chrome/NativeMessagingHosts/com.alipay.edit.json',
                '/Library/Google/Chrome/NativeMessagingHosts/com.alipay.security.json',
                '/Library/LaunchDaemons/com.alipay.DispatcherService.plist',
              ]

  zap :delete => [
    '~/Library/Alipay',
    '~/Library/Internet Plug-Ins/aliedit.plugin',
    '~/Library/Internet Plug-Ins/npalicdo.plugin',
    '~/Library/LaunchAgents/com.alipay.refresher.plist',
  ]

  caveats <<-EOS.undent
      WARNING: aliedit installer dumps files all over your disk, use mobile app if possible.

      The purpose of this cask is providing a way to uninstall it.

      To completely remove this package:
        brew cask zap aliedit
  EOS
end
