cask 'softmaker-freeoffice' do
  version '2018,966'
  sha256 '7a0a820827ae52d98fe95e0f1377ade829b9bc7d7d188f9769f0cff07271f7ae'

  # softmaker.net was verified as official when first introduced to the cask
  url "https://www.softmaker.net/down/softmaker-freeoffice-#{version.before_comma}.pkg"
  appcast 'https://www.freeoffice.com/en/support/version-history',
          configuration: version.after_comma
  name 'SoftMaker FreeOffice'
  homepage 'https://www.freeoffice.com/'

  pkg "softmaker-freeoffice-#{version.before_comma}.pkg"

  uninstall pkgutil: "com.SoftMaker.FreeOffice#{version.before_comma}"
end
