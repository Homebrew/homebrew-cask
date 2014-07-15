class Chefdk < Cask
  version '0.2.0-2'
  sha256 'dc6d36d847365e54cc36131b0bb087780c1d2800c4003410bb340a7f924fac83'

  url 'https://opscode-omnibus-packages.s3.amazonaws.com/mac_os_x/10.9/x86_64/chefdk-0.2.0-2.dmg'
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
