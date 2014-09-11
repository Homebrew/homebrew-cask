class Chefdk < Cask
  version '0.2.1-1'
  sha256 'd4a6023e21c2c3cfb6773382ae7d6111e2de44ac1064aa2b1c0faddcd3bc1d13'

  url 'https://opscode-omnibus-packages.s3.amazonaws.com/mac_os_x/10.8/x86_64/chefdk-0.2.1-1.dmg'
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
