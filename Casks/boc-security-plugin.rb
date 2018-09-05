cask 'boc-security-plugin' do
  version :latest
  sha256 :no_check

  url 'https://dlsev.boc.cn/support/secWidgets/npBOCMACSip_Product.pkg'
  name 'Bank of China (BOC) Security Plugin'
  name '中国银行网上银行登录安全控件'
  homepage 'https://www.boc.cn/'

  pkg 'npBOCMACSip_Product.pkg'

  uninstall pkgutil: [
                       'com.CFCA.npseceditctlmacboc.com.cfca.npSecEditCtl.Assistant.pkg',
                       'com.CFCA.npseceditctlmacboc.npSecEditCtl.MAC.BOC-1.pkg',
                       'com.CFCA.npseceditctlmacboc.npSecEditCtl.MAC.BOC.pkg',
                       'com.CFCA.npseceditctlmacboc.npSecEditCtl.MAC.BOC.plugin.post.pkg',
                       'com.CFCA.npseceditctlmacboc.npSecEditCtl.MAC.BOC.plugin.pre.pkg',
                     ]
end
