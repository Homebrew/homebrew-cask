cask 'munki' do
  version '3.3.1.3537'
  sha256 '7077cef8baafd501911117327a511aad7b1bc54cf31113e5c6b7407340d3407f'

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
