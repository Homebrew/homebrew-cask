cask :v1 => 'chefdk' do
  version '0.5.0-1'
  sha256 '3225a292f754946890fa4fe5d118c1f8ef572f2531d240dd6f0a3122d57c692c'

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
