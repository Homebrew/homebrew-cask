class Horndis < Cask
  url 'http://joshuawise.com/downloads/HoRNDIS-rel5.pkg'
  homepage 'http://joshuawise.com/horndis'
  version '5'
  sha1 '12a74cec071017ba11655b5740b8a58e2f52a219'
  install 'HoRNDIS-rel5.pkg'
  uninstall :kext => 'com.joshuawise.kexts.HoRNDIS',
            :pkgutil => 'com.joshuawise.*'
end
