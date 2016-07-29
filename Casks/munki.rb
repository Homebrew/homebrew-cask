cask 'munki' do
  version '2.7.0.2753'
  sha256 '35a87553f920ca5c212612be961addd794b80a58a488bf952eff768bd833ea6b'

  # github.com/munki/munki was verified as official when first introduced to the cask
  url "https://github.com/munki/munki/releases/download/v#{version.sub(%r{^(\d+\.\d+.\d+).*}, '\1')}/munkitools-#{version}.pkg"
  appcast 'https://github.com/munki/munki/releases.atom',
          checkpoint: '5bdf6a4f554207e18e92943533e141d2bf2ab178d23fa57be43521df2c3fa1ff'
  name 'Munki'
  homepage 'https://www.munki.org/munki/'
  license :apache

  pkg "munkitools-#{version}.pkg"

  uninstall pkgutil: 'com.googlecode.munki.*'
end
