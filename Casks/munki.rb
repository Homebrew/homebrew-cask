cask 'munki' do
  version '3.6.4.3786'
  sha256 'c20826da7df6dd7c9b3404e1c348523a5f04b760413dfd7a2b632cb861025d0d'

  # github.com/munki/munki/ was verified as official when first introduced to the cask
  url "https://github.com/munki/munki/releases/download/v#{version.major_minor_patch}/munkitools-#{version}.pkg"
  appcast 'https://github.com/munki/munki/releases.atom',
          must_contain: version.major_minor_patch
  name 'Munki'
  homepage 'https://www.munki.org/munki/'

  pkg "munkitools-#{version}.pkg"

  uninstall pkgutil:   'com.googlecode.munki.*',
            launchctl: [
                         'com.googlecode.munki.app_usage_monitor',
                         'com.googlecode.munki.appusaged',
                       ]
end
