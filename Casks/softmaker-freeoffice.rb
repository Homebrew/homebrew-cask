cask 'softmaker-freeoffice' do
  version '2018,976'
  sha256 'a93564f66b1c5748dea3cd3672226dedb3d6c1f9126c3c73eaa843c222336b56'

  # softmaker.net/ was verified as official when first introduced to the cask
  url "https://www.softmaker.net/down/softmaker-freeoffice-#{version.before_comma}.pkg"
  appcast 'https://www.freeoffice.com/en/support/version-history',
          must_contain: version.after_comma
  name 'SoftMaker FreeOffice'
  homepage 'https://www.freeoffice.com/'

  pkg "softmaker-freeoffice-#{version.before_comma}.pkg"

  uninstall pkgutil: "com.SoftMaker.FreeOffice#{version.before_comma}"
end
