cask 'sdformatter' do
  version '4.00B'
  sha256 '5b88a851d375ef471523a0f8371edda144c4650d40cfc94902440fece77aa27e'

  url "https://www.sdcard.org/downloads/formatter_#{version.major}/eula_mac/SDFormatter_#{version}.pkg"
  name 'SD Formatter'
  homepage 'https://www.sdcard.org/'

  pkg "SDFormatter_#{version}.pkg"

  uninstall pkgutil: 'jp.co.trendy.sdformatter.SDFormatter.pkg'
end
