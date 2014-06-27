class Chefdk < Cask
  version '0.1.0-1'
  sha256 '6f40ebb86379cdc06987f760dce4c14a6315236f778ee1e752d16017ce5ce1ce'

  url 'https://opscode-omnibus-packages.s3.amazonaws.com/mac_os_x/10.9/x86_64/chefdk-0.1.0-1.dmg'
  homepage 'http://www.getchef.com/downloads/chef-dk/mac/'

  install 'chefdk.pkg'
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
