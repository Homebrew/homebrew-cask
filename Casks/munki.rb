cask 'munki' do
  version '3.2.1.3499'
  sha256 '349c8b3a74f86d397b3a6025ce490da280286c4cfc610b633ce63b5e4e4d3ad4'

  # github.com/munki/munki was verified as official when first introduced to the cask
  url "https://github.com/munki/munki/releases/download/v#{version.major_minor_patch}/munkitools-#{version}.pkg"
  appcast 'https://github.com/munki/munki/releases.atom',
          checkpoint: 'bb68e350b7cb6e386a5ae87a88bc9975c62fd8f44fdb6ab0fae32e0ec4c9280d'
  name 'Munki'
  homepage 'https://www.munki.org/munki/'

  pkg "munkitools-#{version}.pkg"

  uninstall pkgutil:   'com.googlecode.munki.*',
            launchctl: 'com.googlecode.munki.app_usage_monitor'
end
