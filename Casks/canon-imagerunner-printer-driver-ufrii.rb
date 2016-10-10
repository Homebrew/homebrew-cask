cask 'canon-imagerunner-printer-driver-ufrii' do
  version '10.09.00'
  sha256 '2811eb7c46a0011394d030a31d819466283aa3a5fb4dc79ce5e8c57d29820f6a'

  url "https://downloads.canon.com/bisg2016/drivers/mac/UFRII_v#{version}_Mac.zip"
  name 'Canon imageRUNNER UFRII Printer Driver'
  homepage 'https://www.usa.canon.com/internet/portal/us/home/support/details/copiers-mfps-fax-machines/support-multifunction/imagerunner-2018'

  pkg 'UFRII_LT_LIPS_LX_Installer.pkg'

  uninstall pkgutil: 'jp.co.canon.CUPSPrinter.*'
end
