cask 'chefdk' do
  version '0.10.0-1'
  sha256 '8d2b7f1dfde97e8120393288bb230547fc80e9cca518afcec46026c5288a5952'

  # opscode-omnibus-packages.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://opscode-omnibus-packages.s3.amazonaws.com/mac_os_x/10.11/x86_64/chefdk-#{version}.dmg"
  name 'Chef Development Kit'
  name 'ChefDK'
  homepage 'https://downloads.getchef.com/chef-dk/'
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
                       '/usr/local/bin/fauxhai',
                       '/usr/local/bin/foodcritic',
                       '/usr/local/bin/kitchen',
                       '/usr/local/bin/knife',
                       '/usr/local/bin/ohai',
                       '/usr/local/bin/rubocop',
                       '/usr/local/bin/shef',
                       '/usr/local/bin/strain',
                       '/usr/local/bin/strainer',
                     ]
end
