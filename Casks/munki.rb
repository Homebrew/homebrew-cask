cask 'munki' do
  version '3.1.0.3430'
  sha256 '2ab26ab0cc87b28e390a30d37539a551f8b3c6a6a0723fd4fc480f997a503d2e'

  # github.com/munki/munki was verified as official when first introduced to the cask
  url "https://github.com/munki/munki/releases/download/v#{version.major_minor_patch}/munkitools-#{version}.pkg"
  appcast 'https://github.com/munki/munki/releases.atom',
          checkpoint: 'a667c3087f5496dbc9c0ca5eab3093ea1da7c6d4fbea471f7cbaad7f85aa70f7'
  name 'Munki'
  homepage 'https://www.munki.org/munki/'

  pkg "munkitools-#{version}.pkg"

  uninstall pkgutil:   'com.googlecode.munki.*',
            launchctl: 'com.googlecode.munki.app_usage_monitor'
end
