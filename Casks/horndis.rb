cask 'horndis' do
  version '8'
  sha256 'daca9f4e3e7d392821fa349403d349930e675d234cd27a5f43f2b46da34b5a92'

  url "https://github.com/jwise/HoRNDIS/releases/download/rel#{version}/HoRNDIS-rel#{version}.pkg"
  appcast 'https://github.com/jwise/HoRNDIS/releases.atom',
          checkpoint: 'ddb30f68600eaedeacdd13e016afa0522fb2291482d94b21f7a9d99a4d61bb4f'
  name 'HoRNDIS'
  homepage 'https://github.com/jwise/HoRNDIS'

  pkg "HoRNDIS-rel#{version}.pkg"

  uninstall kext:    'com.joshuawise.kexts.HoRNDIS',
            pkgutil: 'com.joshuawise.*'
end
