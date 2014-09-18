class Chefdk < Cask
  version '0.2.2-1'
  sha256 '4922390a2dc08c26947fe8ed94a3a1777bd820e0e409e4072b2fb1315f4425d5'

  url "https://opscode-omnibus-packages.s3.amazonaws.com/mac_os_x/10.8/x86_64/chefdk-#{version}.dmg"
  homepage 'http://www.getchef.com/downloads/chef-dk/mac/'

  pkg 'chefdk.pkg'
  uninstall :pkgutil => 'com.getchef.pkg.chefdk',
            :files   => [
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
                         '/usr/bin/strainer'
                        ]
end
