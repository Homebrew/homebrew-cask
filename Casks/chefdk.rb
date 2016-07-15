cask 'chefdk' do
  version '0.15.16-1'
  sha256 '3be88aa75d68824a01c9e9f4e3104930a67877c8cd92976b57f5d300228a597f'

  url "https://packages.chef.io/stable/mac_os_x/10.11/chefdk-#{version}.dmg"
  name 'Chef Development Kit'
  name 'ChefDK'
  homepage 'https://downloads.chef.io/chef-dk/'
  license :apache

  pkg "chefdk-#{version}.pkg"

  # When updating this cask, please verify the list of paths to delete (and
  # add to it if necessary):
  #  find /usr/local/bin -lname '/opt/chefdk/*'
  # (Source: https://docs.chef.io/install_dk.html#mac-os-x)
  uninstall pkgutil: 'com.getchef.pkg.chefdk',
            delete:  [
                       '/opt/chefdk/',
                       '/usr/local/bin/berks',
                       '/usr/local/bin/chef',
                       '/usr/local/bin/chef-apply',
                       '/usr/local/bin/chef-client',
                       '/usr/local/bin/chef-shell',
                       '/usr/local/bin/chef-solo',
                       '/usr/local/bin/chef-zero',
                       '/usr/local/bin/cookstyle',
                       '/usr/local/bin/delivery',
                       '/usr/local/bin/fauxhai',
                       '/usr/local/bin/foodcritic',
                       '/usr/local/bin/kitchen',
                       '/usr/local/bin/knife',
                       '/usr/local/bin/ohai',
                       '/usr/local/bin/push-apply',
                       '/usr/local/bin/pushy-client',
                       '/usr/local/bin/pushy-service-manager',
                       '/usr/local/bin/rubocop',
                     ]
end
