cask 'horndis' do
  version '8'
  sha256 'daca9f4e3e7d392821fa349403d349930e675d234cd27a5f43f2b46da34b5a92'

  url "http://joshuawise.com/downloads/HoRNDIS-rel#{version}.pkg"
  name 'HoRNDIS'
  homepage 'http://joshuawise.com/horndis'
  gpg "#{url}.sig",
      key_id: '3e7f6d58ea80e0b3'

  pkg "HoRNDIS-rel#{version}.pkg"

  uninstall kext:    'com.joshuawise.kexts.HoRNDIS',
            pkgutil: 'com.joshuawise.*'
end
