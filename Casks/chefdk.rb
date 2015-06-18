cask :v1 => 'chefdk' do
  version '0.6.2-1'
  sha256 'a8e95bfabd9668d9083e0658f06b071c6261e518478165a4b61d02bddacefe5a'

  # amazonaws is the official download host per the vendor homepage
  url "https://opscode-omnibus-packages.s3.amazonaws.com/mac_os_x/10.8/x86_64/chefdk-#{version}.dmg"
  name 'Chef Development Kit'
  name 'ChefDK'
  homepage 'https://downloads.getchef.com/chef-dk/'
  license :apache

  pkg "chefdk-#{version}.pkg"

  uninstall :pkgutil => 'com.getchef.pkg.chefdk',
            :delete  => [
                         '/opt/chefdk/',
                         '/usr/bin/berks',
                         '/usr/bin/chef',
                         '/usr/bin/chef-apply',
                         '/usr/bin/chef-client',
                         '/usr/bin/chef-service-manager',
                         '/usr/bin/chef-shell',
                         '/usr/bin/chef-solo',
                         '/usr/bin/chef-vault',
                         '/usr/bin/chef-windows-service',
                         '/usr/bin/fauxhai',
                         '/usr/bin/foodcritic',
                         '/usr/bin/kitchen',
                         '/usr/bin/knife',
                         '/usr/bin/ohai',
                         '/usr/bin/rubocop',
                        ]
end
