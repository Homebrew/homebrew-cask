cask 'munki' do
  version '2.8.0.2810'
  sha256 'f21e1c85bda04d703a1fcdc05c46a79bb32112c00ac43cfa2f50d782a85fb608'

  # github.com/munki/munki was verified as official when first introduced to the cask
  url "https://github.com/munki/munki/releases/download/v#{version.sub(%r{^(\d+\.\d+.\d+).*}, '\1')}/munkitools-#{version}.pkg"
  appcast 'https://github.com/munki/munki/releases.atom',
          checkpoint: 'bb38df0b01ef55cf51bfc6ec6fff2750dc8740c6fc662ee6d118efeba82176ba'
  name 'Munki'
  homepage 'https://www.munki.org/munki/'
  license :apache

  pkg "munkitools-#{version}.pkg"

  uninstall pkgutil: 'com.googlecode.munki.*'
end
