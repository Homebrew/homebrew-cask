cask :v1 => 'canon-imagerunner-printer-driver-ufrii' do
  version '10.08.01'
  sha256 '4255b1236bbf6b30b6b78db277fd2425d051ee58fd13a954068f5790ab7e2a28'

  url "http://downloads.canon.com/bisg2015/drivers/mac/UFRII_v#{version}_MAC.zip"
  name 'Canon imageRUNNER UFRII Printer Driver'
  homepage 'https://www.usa.canon.com/cusa/sna/office/color_imagerunner_advance/imagerunner_advance_c5030/imagerunner_advance_c5030#DriversAndSoftware'
  license :gratis

  container :nested => "UFRII_v#{version}_MAC.dmg"
  pkg 'UFRII_LT_LIPS_LX_Installer.pkg'

  uninstall :pkgutil => 'jp.co.canon.CUPSPrinter.*'
end
