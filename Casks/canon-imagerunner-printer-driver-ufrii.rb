cask :v1 => 'canon-imagerunner-printer-driver-ufrii' do
  version '10.06.00'
  sha256 'a7ddf16161055f697ded4dc39d9b027976b4d5d78b4ee837dd26d79402781fa1'

  url "http://downloads.canon.com/isg_public/UFRII_v#{version}_Mac.zip"
  name 'Canon imageRUNNER UFRII Printer Driver'
  homepage 'https://www.usa.canon.com/cusa/sna/office/color_imagerunner_advance/imagerunner_advance_c5030/imagerunner_advance_c5030#DriversAndSoftware'
  license :gratis

  container :nested => "UFRII_v#{version}_Mac.dmg"
  pkg 'UFRII_LT_LIPS_LX_Installer.pkg'

  uninstall :pkgutil => 'jp.co.canon.CUPSPrinter.*'
end
