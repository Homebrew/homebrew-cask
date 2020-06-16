cask 'osquery' do
  version '4.3.0'
  sha256 '197eae9624ec830bf3fec53b79b11e084792a04a461c3241d95cf6aebd3e6ac2'

  url "https://pkg.osquery.io/darwin/osquery-#{version}.pkg"
  appcast 'https://github.com/osquery/osquery/releases.atom'
  name 'osquery'
  homepage 'https://osquery.io/'

  pkg "osquery-#{version}.pkg"

  uninstall delete:    [
                         '/private/var/log/osquery',
                         '/private/var/osquery',
                         '/usr/local/bin/osqueryctl',
                         '/usr/local/bin/osqueryd',
                       ],
            launchctl: 'com.facebook.osqueryd',
            pkgutil:   'com.facebook.osquery'
end
