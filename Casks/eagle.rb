cask 'eagle' do
  version '7.6.0'
  sha256 'e4ee203fcb7deb4f8ce992df614b246f6c4332bba42dbefd5da8d2410427a7de'

  # cadsoft.de was verified as official when first introduced to the cask
  url "http://web.cadsoft.de/ftp/eagle/program/#{version.sub(%r{\.\d+$}, '')}/eagle-mac64-#{version}.zip"
  name 'CadSoft EAGLE'
  homepage 'https://www.cadsoftusa.com/'
  license :freemium

  pkg "eagle-mac64-#{version}.pkg"

  uninstall pkgutil: 'com.CadSoftComputerGmbH.EAGLE',
            delete:  "/Applications/EAGLE-#{version}"
end
