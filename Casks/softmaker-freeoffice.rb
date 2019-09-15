cask 'softmaker-freeoffice' do
  version '2018,970'
  sha256 '0dd6d248e282b366693e4124c3fb701d19c7270b202c47fb56dc4a1daa06ce7a'

  # softmaker.net was verified as official when first introduced to the cask
  url "https://www.softmaker.net/down/softmaker-freeoffice-#{version.before_comma}.pkg"
  appcast 'https://www.freeoffice.com/en/support/version-history',
          configuration: version.after_comma
  name 'SoftMaker FreeOffice'
  homepage 'https://www.freeoffice.com/'

  pkg "softmaker-freeoffice-#{version.before_comma}.pkg"

  uninstall pkgutil: "com.SoftMaker.FreeOffice#{version.before_comma}"
end
