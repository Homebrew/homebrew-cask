cask 'aliedit' do
  version :latest
  sha256 :no_check

  url 'https://download.alipay.com/sec/edit/wkaliedit.dmg'
  name '支付宝控件'
  homepage 'https://110.alipay.com/sc/aliedit/intro.htm'

  pkg 'installer.pkg'

  uninstall pkgutil:   'com.alipay.www',
            launchctl: [
                         'com.alipay.DispatcherService',
                         'com.alipay.refresher.agent',
                       ],
            delete:    [
                         '/Library/Application Support/Alipay',
                         '/Library/Google/Chrome/NativeMessagingHosts/com.alipay.cert.json',
                         '/Library/Google/Chrome/NativeMessagingHosts/com.alipay.edit.json',
                         '/Library/Google/Chrome/NativeMessagingHosts/com.alipay.security.json',
                         '/Library/LaunchDaemons/com.alipay.DispatcherService.plist',
                         # the files under ~/Library are installed by the pkg, and logically should be removed by uninstall
                         File.expand_path('~/Library/Alipay'),
                         File.expand_path('~/Library/Internet Plug-Ins/aliedit.plugin'),
                         File.expand_path('~/Library/Internet Plug-Ins/npalicdo.plugin'),
                         File.expand_path('~/Library/LaunchAgents/com.alipay.refresher.plist'),
                       ]
end
