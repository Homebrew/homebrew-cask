cask 'chefdk' do
  version '2.2.1'
  sha256 'd140708f6b41dc5bd25b3e4f8a2f277ad0f26f7bd3f0ce4331bb2f8676993ca7'

  url "https://packages.chef.io/files/stable/chefdk/#{version}/mac_os_x/#{MacOS.version}/chefdk-#{version}-1.dmg"
  appcast "https://www.chef.io/chef/metadata-chefdk?p=mac_os_x&pv=#{MacOS.version}&m=x86_64&v=latest&prerelease=false",
          checkpoint: 'fabeb329afd9269a87708e5097f88581dc0d6badaa4598e185f560d54a4641ab'
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

  zap delete: '~/.chefdk/'
end
