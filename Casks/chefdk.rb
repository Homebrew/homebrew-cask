cask 'chefdk' do
  version '0.19.6-1'
  sha256 '10018814d9abf1323ad7193c7950ec943b5c307e63f07de395604c09e96edce9'

  url "https://packages.chef.io/stable/mac_os_x/10.11/chefdk-#{version}.dmg"
  appcast 'https://www.chef.io/chef/metadata-chefdk?p=mac_os_x&pv=10.11&m=x86_64&v=latest&prerelease=false',
          checkpoint: 'ca865b973720f39f692b0e80e226cb999633e973cb74f9d2df4399a457854564'
  name 'Chef Development Kit'
  name 'ChefDK'
  homepage 'https://downloads.chef.io/chef-dk/'

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

  zap delete: '~/.chefdk/'
end
