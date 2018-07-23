cask 'horndis' do
  version '9.1'
  sha256 '1c1a0d76509d01183145924d675aa158a794c965738e2b54d4ecd4e7323eb2f8'

  url "https://github.com/jwise/HoRNDIS/releases/download/rel#{version}/HoRNDIS-#{version}.pkg"
  appcast 'https://github.com/jwise/HoRNDIS/releases.atom'
  name 'HoRNDIS'
  homepage 'https://github.com/jwise/HoRNDIS'

  pkg "HoRNDIS-#{version}.pkg"

  uninstall kext:    'com.joshuawise.kexts.HoRNDIS',
            pkgutil: 'com.joshuawise.*'
end
