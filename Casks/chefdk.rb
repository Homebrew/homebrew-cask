cask 'chefdk' do
  version '2.4.17'
  sha256 'e9059e747d18234f7117ae186a68f054c59a8c551b2e48f187b084fb0dbe794d'

  url "https://packages.chef.io/files/stable/chefdk/#{version}/mac_os_x/10.12/chefdk-#{version}-1.dmg"
  appcast "https://www.chef.io/chef/metadata-chefdk?p=mac_os_x&pv=#{MacOS.version}&m=x86_64&v=latest&prerelease=false",
          checkpoint: '32842619c3be8fe09900b91a25944f0cf0ff15b675755ebfd05499a4569cefde'
  name 'Chef Development Kit'
  name 'ChefDK'
  homepage 'https://downloads.chef.io/chefdk'

  depends_on macos: '>= :yosemite'

  pkg "chefdk-#{version}-1.pkg"

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
                       '/usr/local/bin/chef-vault',
                       '/usr/local/bin/cookstyle',
                       '/usr/local/bin/dco',
                       '/usr/local/bin/delivery',
                       '/usr/local/bin/foodcritic',
                       '/usr/local/bin/inspec',
                       '/usr/local/bin/kitchen',
                       '/usr/local/bin/knife',
                       '/usr/local/bin/ohai',
                       '/usr/local/bin/push-apply',
                       '/usr/local/bin/pushy-client',
                       '/usr/local/bin/pushy-service-manager',
                       '/usr/local/bin/rubocop',
                     ]

  zap trash: '~/.chefdk/'
end
