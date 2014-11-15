cask :v1 => 'horndis' do
  version '7'
  sha256 '6e12e75a07ed729986cc0d7a25faa1aa1171c2e4a8ddf3ccf819a35a20c6e98d'

  url "http://joshuawise.com/downloads/HoRNDIS-rel#{version}.pkg"
  gpg "#{url}.sig",
      :key_id => '3e7f6d58ea80e0b3'
  homepage 'http://joshuawise.com/horndis'
  license :gpl

  pkg "HoRNDIS-rel#{version}.pkg"
  uninstall :kext => 'com.joshuawise.kexts.HoRNDIS',
            :pkgutil => 'com.joshuawise.*'
end
