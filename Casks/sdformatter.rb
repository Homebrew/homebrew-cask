cask :v1 => 'sdformatter' do
  version '4.0'
  sha256 '5b88a851d375ef471523a0f8371edda144c4650d40cfc94902440fece77aa27e'

  url "https://www.sdcard.org/downloads/formatter_4/eula_mac/SDFormatter_#{version}0B.pkg"
  homepage 'https://www.sdcard.org'
  license :unknown

  pkg "SDFormatter_#{version}0B.pkg"
  uninstall :pkgutil => 'jp.co.trendy.sdformatter.SDFormatter.pkg'
end
