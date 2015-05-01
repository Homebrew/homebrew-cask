cask :v1 => 'chefdk' do
  version '0.5.1-1'
  sha256 'd6df2e8025dbadf1a01333124841349f4973e928ace2d5bafaabfd5bccb530ec'

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
