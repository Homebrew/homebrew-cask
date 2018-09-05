cask 'sdformatter' do
  version '0.5.0.0'
  sha256 '4dba087a5a639d12b9e34666834c1b9f09914e92dc0aec20bd9f43e2fffb1ba9'

  url "https://www.sdcard.org/downloads/formatter_4/eula_mac/InstallSD_CardFormatter#{version.no_dots}.mpkg"
  name 'SD Formatter'
  homepage 'https://www.sdcard.org/'

  pkg "InstallSD_CardFormatter#{version.no_dots}.mpkg"

  uninstall pkgutil: 'com.tuxera.pkg.SD_Card_Formatter'

  zap trash: '~/Library/Caches/com.tuxera.SDCardFormatter'
end
