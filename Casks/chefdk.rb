cask 'chefdk' do
  if MacOS.version == :mountain_lion
    version '0.11.2-1'
    sha256 '56899eab322cacac7f445a24d3159af34fccb5910642f4535eff4ee47321fe56'
  elsif MacOS.version >= :mavericks
    version '1.1.16-1'
    sha256 '2c20e646b90e13e1dec5db22def0a752311eafcc7f441fa5f366002a7c2b65ae'
  end

  url "https://packages.chef.io/stable/mac_os_x/#{MacOS.version}/chefdk-#{version}.dmg"
  appcast "https://www.chef.io/chef/metadata-chefdk?p=mac_os_x&pv=#{MacOS.version}&m=x86_64&v=latest&prerelease=false",
          checkpoint: '9b9421aef8f9beaf80d6f24c1ecb26113016673b160b711cc2a98100ce25c105'
  name 'Chef Development Kit'
  name 'ChefDK'
  homepage 'https://downloads.chef.io/chefdk/'

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
