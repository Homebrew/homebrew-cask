class Horndis < Cask
  url 'http://joshuawise.com/downloads/HoRNDIS-rel5.pkg'
  homepage 'http://joshuawise.com/horndis'
  version '5'
  sha256 'd183b8613b7e3811580afa9f1a8691163c36745cea3b8531bf1a50aba180565d'
  install 'HoRNDIS-rel5.pkg'
  uninstall :kext => 'com.joshuawise.kexts.HoRNDIS',
            :pkgutil => 'com.joshuawise.*'
end
