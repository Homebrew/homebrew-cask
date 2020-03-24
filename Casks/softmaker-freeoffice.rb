cask 'softmaker-freeoffice' do
  version '2018,974'
  sha256 'd4f5228086d7ac81cb775adfa7d45fc90ef70a65f62fc9cc9c09694d7f991f57'

  # softmaker.net was verified as official when first introduced to the cask
  url "https://www.softmaker.net/down/softmaker-freeoffice-#{version.before_comma}.pkg"
  appcast 'https://www.freeoffice.com/en/support/version-history',
          configuration: version.after_comma
  name 'SoftMaker FreeOffice'
  homepage 'https://www.freeoffice.com/'

  pkg "softmaker-freeoffice-#{version.before_comma}.pkg"

  uninstall pkgutil: "com.SoftMaker.FreeOffice#{version.before_comma}"
end
