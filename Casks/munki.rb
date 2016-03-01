cask 'munki' do
  version '2.5.1.2630'
  sha256 'cf2c50078f1bf02225ac886536cca0448455a0926bc3aa5e53ea0bac2261f7fa'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/munki/munki/releases/download/v#{version.sub(%r{^(\d+\.\d+.\d+).*}, '\1')}/munkitools-#{version}.pkg"
  appcast 'https://github.com/munki/munki/releases.atom',
          checkpoint: 'babf25ad250efca9b32499be3b45401d6ae3a2358614a87dc5278f5f8c4cd244'
  name 'Munki'
  homepage 'https://www.munki.org/munki/'
  license :apache

  pkg "munkitools-#{version}.pkg"

  uninstall pkgutil: 'com.googlecode.munki.*'
end
