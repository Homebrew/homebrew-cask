cask 'munki' do
  version '3.2.0.3476'
  sha256 '845f129dc33a0624f4ff526107294285355b597bf701e3d7888ae7a77b8106fb'

  # github.com/munki/munki was verified as official when first introduced to the cask
  url "https://github.com/munki/munki/releases/download/v#{version.major_minor_patch}/munkitools-#{version}.pkg"
  appcast 'https://github.com/munki/munki/releases.atom',
          checkpoint: '9668f7e2a4a576c5772f78041af6266a1be6a7501e0736cfd0c2cf6561d3ff7b'
  name 'Munki'
  homepage 'https://www.munki.org/munki/'

  pkg "munkitools-#{version}.pkg"

  uninstall pkgutil:   'com.googlecode.munki.*',
            launchctl: 'com.googlecode.munki.app_usage_monitor'
end
