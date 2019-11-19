cask 'softmaker-freeoffice' do
  version '2018,973'
  sha256 'b0e25f30e14eff0e6b12fa1a6317f47b0ae6e56a363d676ee215ab4a788e4993'

  # softmaker.net was verified as official when first introduced to the cask
  url "https://www.softmaker.net/down/softmaker-freeoffice-#{version.before_comma}.pkg"
  appcast 'https://www.freeoffice.com/en/support/version-history',
          configuration: version.after_comma
  name 'SoftMaker FreeOffice'
  homepage 'https://www.freeoffice.com/'

  pkg "softmaker-freeoffice-#{version.before_comma}.pkg"

  uninstall pkgutil: "com.SoftMaker.FreeOffice#{version.before_comma}"
end
