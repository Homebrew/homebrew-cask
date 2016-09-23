cask 'chefdk' do
  version '0.18.26-1'
  sha256 '57097b056ff1403daef1034a98847adecd3cdbda47b9c6bee6885e7d2d5ea92f'

  url "https://packages.chef.io/stable/mac_os_x/10.11/chefdk-#{version}.dmg"
  appcast 'https://www.chef.io/chef/metadata-chefdk?p=mac_os_x&pv=10.11&m=x86_64&v=latest&prerelease=false',
          checkpoint: '9f23e0a11081f36da4661069cc6b72632bc4c65a0bee5facd4ce4460df6c5cea'
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
