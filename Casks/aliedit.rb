# encoding: UTF-8
cask :v1 => 'aliedit' do
  version :latest
  sha256 :no_check

  name '支付宝控件'
  url 'https://d.alipayobjects.com/sec/edit/wkaliedit.dmg'
  homepage 'https://110.alipay.com/sc/aliedit/intro.htm'
  license :closed

  pkg 'installer.pkg'

  uninstall :pkgutil => 'com.alipay.www',
            :launchctl => [
                           'com.alipay.DispatcherService',
                           'com.alipay.refresher.agent',
                          ],
            :delete => [
                        '/Library/Application Support/Alipay',
                        '/Library/Google/Chrome/NativeMessagingHosts/com.alipay.cert.json',
                        '/Library/Google/Chrome/NativeMessagingHosts/com.alipay.edit.json',
                        '/Library/Google/Chrome/NativeMessagingHosts/com.alipay.security.json',
                        '/Library/LaunchDaemons/com.alipay.DispatcherService.plist',
                        # the files under ~/Library are installed by the pkg, and logically should be removed by uninstall
                        Pathname.new(File.expand_path('~')).join('Library/Alipay'),
                        Pathname.new(File.expand_path('~')).join('Internet Plug-Ins/aliedit.plugin'),
                        Pathname.new(File.expand_path('~')).join('Internet Plug-Ins/npalicdo.plugin'),
                        Pathname.new(File.expand_path('~')).join('LaunchAgents/com.alipay.refresher.plist'),
                       ]
end
