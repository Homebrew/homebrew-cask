cask 'sdformatter' do
  version '5.0.1'
  sha256 'dc40dd0c7c55a0ddb76af1fce84efc8993ac810b3d554e6e2228c9c6bb8a3544'

  url "https://www.sdcard.org/downloads/formatter_4/eula_mac/SDCardFormatterv#{version.major}_Mac.zip"
  name 'SD Formatter'
  homepage 'https://www.sdcard.org/'

  pkg "SDCardFormatterv#{version.major}_Mac/Install SD Card Formatter #{version}.mpkg"

  uninstall pkgutil: 'com.tuxera.pkg.SD_Card_Formatter'

  zap trash: '~/Library/Caches/com.tuxera.SDCardFormatter'
end
