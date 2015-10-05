cask :v1 => 'chefdk' do
  version '0.8.0-1'
  sha256 '4d4d6d29324aeed5331d7e573a6d658bae78b7bbf3e3502b52702476a8b747b4'

  # amazonaws is the official download host per the vendor homepage
  url "https://opscode-omnibus-packages.s3.amazonaws.com/mac_os_x/10.8/x86_64/chefdk-#{version}.dmg"
  name 'Chef Development Kit'
  name 'ChefDK'
  homepage 'https://downloads.getchef.com/chef-dk/'
  license :apache

  pkg "chefdk-#{version}.pkg"

  # When updating this formula, please verify the list of paths to delete (and
  # add to it if necessary):
  #  find /usr/bin -lname '/opt/chefdk/*'
  # (Source: https://docs.chef.io/install_dk.html#mac-os-x)
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
