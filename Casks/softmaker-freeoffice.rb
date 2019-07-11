cask 'softmaker-freeoffice' do
  version '2018'
  sha256 :no_check # required as upstream package is updated in-place

  # softmaker.net was verified as official when first introduced to the cask
  url "https://www.softmaker.net/down/softmaker-freeoffice-#{version}.pkg"
  name 'SoftMaker FreeOffice'
  homepage 'https://www.freeoffice.com/'

  pkg "softmaker-freeoffice-#{version}.pkg"

  uninstall pkgutil: "com.SoftMaker.FreeOffice#{version}"
end
