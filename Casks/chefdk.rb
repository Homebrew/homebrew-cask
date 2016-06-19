cask 'chefdk' do
  version '0.14.25-1'
  sha256 '4dd60d4d30881157cecf0683b84eb35a8a818e5dffe63de9b9cc6e9be435e88c'

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
                       '/usr/local/bin/fauxhai',
                       '/usr/local/bin/foodcritic',
                       '/usr/local/bin/kitchen',
                       '/usr/local/bin/knife',
                       '/usr/local/bin/ohai',
                       '/usr/local/bin/rubocop',
                     ]
end
