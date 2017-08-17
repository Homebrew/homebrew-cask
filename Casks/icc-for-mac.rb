cask 'icc-for-mac' do
  version '1.0.r7564'
  sha256 '28b8fbd96efc571bc00f8088c41dd836a118451cbe39d69e83ba0c5d52c00491'

  url "http://download.chessclub.com/desktop/mac/ICCforMac.#{%r{\d+\.\d+\.(.*)}.match(version)[1]}.pkg"
  name 'ICC for Mac'
  homepage 'https://www.chessclub.com/download-software/icc-for-mac'

  pkg "ICCforMac.#{%r{\d+\.\d+\.(.*)}.match(version)[1]}.pkg"

  uninstall pkgutil: 'com.chessclub.*'
end
