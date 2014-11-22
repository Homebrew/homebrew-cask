cask :v1 => 'chefdk' do
  version '0.3.5-1'
  sha256 '43994187542a86b7865840ae71ac702c9f473e893b44f6552d5040a4c0202ad1'

  # amazonaws is the official download host per the vendor homepage
  url "https://opscode-omnibus-packages.s3.amazonaws.com/mac_os_x/10.8/x86_64/chefdk-#{version}.dmg"
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
                         '/usr/bin/chef-shell',
                         '/usr/bin/chef-solo',
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
