class Chefdk < Cask
  version '0.3.0-1'
  sha256 'ad64ee257d8ab1966e2cb47c365c92343f19edf33f8884488d7aeaa4eeab7f62'

  url "https://opscode-omnibus-packages.s3.amazonaws.com/mac_os_x/10.8/x86_64/chefdk-#{version}.dmg"
  homepage 'http://downloads.getchef.com/chef-dk/mac/'
  license :apache

  pkg "chefdk-#{version}.pkg"
  uninstall :pkgutil => 'com.getchef.pkg.chefdk',
            :delete  => [
                         '/opt/chefdk/',
                         '/usr/bin/berks',
                         '/usr/bin/chef',
                         '/usr/bin/chef-apply',
                         '/usr/bin/chef-client',
                         '/usr/bin/chef-shell',
                         '/usr/bin/chef-solo',
                         '/usr/bin/chef-zero',
                         '/usr/bin/fauxhai',
                         '/usr/bin/foodcritic',
                         '/usr/bin/kitchen',
                         '/usr/bin/knife',
                         '/usr/bin/ohai',
                         '/usr/bin/rubocop',
                         '/usr/bin/shef',
                         '/usr/bin/strain',
                         '/usr/bin/strainer',
                        ]
end
