class Horndis < Cask
  version '5'
  sha256 'd183b8613b7e3811580afa9f1a8691163c36745cea3b8531bf1a50aba180565d'

  url "http://joshuawise.com/downloads/HoRNDIS-rel#{version}.pkg"
  homepage 'http://joshuawise.com/horndis'

  pkg "HoRNDIS-rel#{version}.pkg"
  uninstall :kext => 'com.joshuawise.kexts.HoRNDIS',
            :pkgutil => 'com.joshuawise.*'
end
