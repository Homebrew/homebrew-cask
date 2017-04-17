# Install via: brew cask canon-driver-ufr-ii
cask :v1 => 'canon-driver-ufr-ii' do
  version 'v10.8.1'
  sha256 'f4935b6c787648fb71df0bfff02d1a021faac85e8fa0e752ba70c0fa610ed229'

  url 'http://files.canon-europe.com/files/soft46642/software/o1591mux_m_ufr1081.dmg'
  name 'Canon UFR II / UFR II LT Printer Driver'
  homepage 'http://fr.software.canon-europe.com/products/0010767.asp'
  license :closed 

  pkg  'Office/UFRII_LT_LIPS_LX_Installer.pkg'
  uninstall :pkgutil => [
              'jp.co.canon.CUPSPrinter.cnaccm.CnLB_46A.pkg',
              'jp.co.canon.CUPSPrinter.cnaccm.CnLBEA17.pkg',
              'jp.co.canon.CUPSPrinter.cnaccm.CommonDAT.pkg',
              'jp.co.canon.CUPSPrinter.core.pkg',
              'jp.co.canon.CUPSPrinter.device.CNPZUIPRC600ZU.pkg',
              'jp.co.canon.CUPSPrinter.device.CNPZUIPRC700ZU.pkg',
              'jp.co.canon.CUPSPrinter.device.CNPZUIR1435ZU.pkg',
              'jp.co.canon.CUPSPrinter.device.CNPZUIR2002ZU.pkg',
              'jp.co.canon.CUPSPrinter.device.CNPZUIRA400ZU.pkg',
              'jp.co.canon.CUPSPrinter.device.CNPZUIRA4225ZU.pkg',
              'jp.co.canon.CUPSPrinter.device.CNPZUIRA4245ZU.pkg',
              'jp.co.canon.CUPSPrinter.device.CNPZUIRA4251ZU.pkg',
              'jp.co.canon.CUPSPrinter.device.CNPZUIRA6255ZU.pkg',
              'jp.co.canon.CUPSPrinter.device.CNPZUIRA6275ZU.pkg',
              'jp.co.canon.CUPSPrinter.device.CNPZUIRA8205ZU.pkg',
              'jp.co.canon.CUPSPrinter.device.CNPZUIRA8285ZU.pkg',
              'jp.co.canon.CUPSPrinter.device.CNPZUIRAC2218ZU.pkg',
              'jp.co.canon.CUPSPrinter.device.CNPZUIRAC2220ZU.pkg',
              'jp.co.canon.CUPSPrinter.device.CNPZUIRAC2225ZU.pkg',
              'jp.co.canon.CUPSPrinter.device.CNPZUIRAC250ZU.pkg',
              'jp.co.canon.CUPSPrinter.device.CNPZUIRAC3320LZU.pkg',
              'jp.co.canon.CUPSPrinter.device.CNPZUIRAC3320ZU.pkg',
              'jp.co.canon.CUPSPrinter.device.CNPZUIRAC3325ZU.pkg',
              'jp.co.canon.CUPSPrinter.device.CNPZUIRAC3330ZU.pkg',
              'jp.co.canon.CUPSPrinter.device.CNPZUIRAC350ZU.pkg',
              'jp.co.canon.CUPSPrinter.device.CNPZUIRAC351ZU.pkg',
              'jp.co.canon.CUPSPrinter.device.CNPZUIRAC5235ZU.pkg',
              'jp.co.canon.CUPSPrinter.device.CNPZUIRAC5250ZU.pkg',
              'jp.co.canon.CUPSPrinter.device.CNPZUIRAC7260ZU.pkg',
              'jp.co.canon.CUPSPrinter.device.CNPZUIRAC7280ZU.pkg',
              'jp.co.canon.CUPSPrinter.device.CNPZUIRAC9270ZU.pkg',
              'jp.co.canon.CUPSPrinter.device.CNPZUIRC1225ZU.pkg',
              'jp.co.canon.CUPSPrinter.device.CNPZUIRC1325ZU.pkg',
              'jp.co.canon.CUPSPrinter.device.CNPZULBP3580ZU.pkg',
              'jp.co.canon.CUPSPrinter.device.CNPZULBP5480ZU.pkg',
              'jp.co.canon.CUPSPrinter.device.CNPZULBP6710ZU.pkg',
              'jp.co.canon.CUPSPrinter.device.CNPZULBP8710ZU.pkg',
              'jp.co.canon.CUPSPrinter.device.CNPZULBP8730ZU.pkg',
              'jp.co.canon.CUPSPrinter.device.CNPZULBP8750ZU.pkg',
              'jp.co.canon.CUPSPrinter.device.CNPZULBP8780ZU.pkg',
              'jp.co.canon.CUPSPrinter.device.CNPZULBP8900ZU.pkg',
              'jp.co.canon.CUPSPrinter.device.CNPZULBP9520CZU.pkg',
              'jp.co.canon.CUPSPrinter.device.CNPZULBP9660CZU.pkg',
              'jp.co.canon.CUPSPrinter.device.CNPZULBP9950CZU.pkg',
              'jp.co.canon.CUPSPrinter.device.CNPZUMF810ZU.pkg',
              'jp.co.canon.CUPSPrinter.device.CommonPPD.pkg',
              'jp.co.canon.CUPSPrinter.device.CommonPPD2.pkg',
              'jp.co.canon.CUPSPrinter.icons.CommonICON.pkg',
              'jp.co.canon.CUPSPrinter.icons.LO-04.pkg',
              'jp.co.canon.CUPSPrinter.icons.LO-90.pkg',
              'jp.co.canon.CUPSPrinter.icons.LO-91.pkg',
              'jp.co.canon.CUPSPrinter.profiles.CNLI10.pkg',
              'jp.co.canon.CUPSPrinter.profiles.CommonICC.pkg',
              'jp.co.canon.CUPSPrinter.profiles.CoreICC.pkg',
            ]
end
