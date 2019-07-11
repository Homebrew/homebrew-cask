cask 'softmaker-freeoffice' do
  version ':latest'
  sha256 '7a0a820827ae52d98fe95e0f1377ade829b9bc7d7d188f9769f0cff07271f7ae'

  # softmaker.net was verified as official when first introduced to the cask
  url 'https://www.softmaker.net/down/softmaker-freeoffice-2018.pkg'
  name 'SoftMaker FreeOffice 2018'
  homepage 'https://www.freeoffice.com/'

  pkg 'softmaker-freeoffice-2018.pkg'

  uninstall pkgutil: 'com.SoftMaker.FreeOffice2018'
end
