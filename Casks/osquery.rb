cask 'osquery' do
  version '4.4.0'
  sha256 '6ecb24891ed65b486962dd640a4313bc168ecca4d757bfd486fb5bf9ef6390dd'

  url "https://pkg.osquery.io/darwin/osquery-#{version}.pkg"
  appcast 'https://github.com/osquery/osquery/releases.atom'
  name 'osquery'
  homepage 'https://osquery.io/'

  pkg "osquery-#{version}.pkg"

  uninstall launchctl: 'com.facebook.osqueryd',
            pkgutil:   'com.facebook.osquery'
end
