class Horndis < Cask
  version '5'
  sha256 'd183b8613b7e3811580afa9f1a8691163c36745cea3b8531bf1a50aba180565d'

  url "http://joshuawise.com/downloads/HoRNDIS-rel#{version}.pkg"
  gpg "#{url}.sig",
      :key_id => '3e7f6d58ea80e0b3'
  homepage 'http://joshuawise.com/horndis'
  license :unknown

  pkg "HoRNDIS-rel#{version}.pkg"
  uninstall :kext => 'com.joshuawise.kexts.HoRNDIS',
            :pkgutil => 'com.joshuawise.*'
end
