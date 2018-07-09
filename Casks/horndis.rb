cask 'horndis' do
  version '9.0'
  sha256 '2b973b0c13f2138dd1a5a2fce61daf042894ee9b7b0e883b86e9d6c37d691c4d'

  url "https://github.com/jwise/HoRNDIS/releases/download/rel#{version}/HoRNDIS-#{version}.pkg"
  appcast 'https://github.com/jwise/HoRNDIS/releases.atom'
  name 'HoRNDIS'
  homepage 'https://github.com/jwise/HoRNDIS'

  pkg "HoRNDIS-#{version}.pkg"

  uninstall kext:    'com.joshuawise.kexts.HoRNDIS',
            pkgutil: 'com.joshuawise.*'
end
