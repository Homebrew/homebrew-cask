cask 'softmaker-freeoffice' do
  version '2018,967'
  sha256 'f60aefe2f58f9331c6c5be2233a00812dd131a9cd0b1580cbac0820b45f8cf44'

  # softmaker.net was verified as official when first introduced to the cask
  url "https://www.softmaker.net/down/softmaker-freeoffice-#{version.before_comma}.pkg"
  appcast 'https://www.freeoffice.com/en/support/version-history',
          configuration: version.after_comma
  name 'SoftMaker FreeOffice'
  homepage 'https://www.freeoffice.com/'

  pkg "softmaker-freeoffice-#{version.before_comma}.pkg"

  uninstall pkgutil: "com.SoftMaker.FreeOffice#{version.before_comma}"
end
