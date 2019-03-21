cask 'munki' do
  version '3.6.0.3733'
  sha256 'ebf580092d3d70c8fb1a1749dac2e2c3f0eebb288d7e79e8164032669852dbda'

  # github.com/munki/munki was verified as official when first introduced to the cask
  url "https://github.com/munki/munki/releases/download/v#{version.major_minor_patch}/munkitools-#{version}.pkg"
  appcast 'https://github.com/munki/munki/releases.atom'
  name 'Munki'
  homepage 'https://www.munki.org/munki/'

  pkg "munkitools-#{version}.pkg"

  uninstall pkgutil:   'com.googlecode.munki.*',
            launchctl: [
                         'com.googlecode.munki.app_usage_monitor',
                         'com.googlecode.munki.appusaged',
                       ]
end
