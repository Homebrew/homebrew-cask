cask 'munki' do
  version '3.3.0.3515'
  sha256 'bda08ad4104cc892033c9a84672f6d24069c30533d0b67de113744d696a53032'

  # github.com/munki/munki was verified as official when first introduced to the cask
  url "https://github.com/munki/munki/releases/download/v#{version.major_minor_patch}/munkitools-#{version}.pkg"
  appcast 'https://github.com/munki/munki/releases.atom',
          checkpoint: 'fcdf4a4a7172c5a0108006afa462524d2510bf985506b1eba081dfefba621ee1'
  name 'Munki'
  homepage 'https://www.munki.org/munki/'

  pkg "munkitools-#{version}.pkg"

  uninstall pkgutil:   'com.googlecode.munki.*',
            launchctl: [
                         'com.googlecode.munki.app_usage_monitor',
                         'com.googlecode.munki.appusaged',
                       ]
end
