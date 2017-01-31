cask 'horndis' do
  version 'rel8pre2-dbg'
  sha256 'daca9f4e3e7d392821fa349403d349930e675d234cd27a5f43f2b46da34b5a92'

  # joshuawise.com was verified as official when first introduced to the cask
  url 'http://nyus.joshuawise.com/HoRNDIS-rel8pre2-dbg.pkg'
  name 'HoRNDIS'
  homepage 'https://github.com/jwise/horndis'

  # gpg download no longer available
  # gpg "#{url}.sig", key_id: '3e7f6d58ea80e0b3'

  pkg 'HoRNDIS-rel8pre2-dbg.pkg'

  uninstall kext:    'com.joshuawise.kexts.HoRNDIS',
            pkgutil: 'com.joshuawise.*'
end
