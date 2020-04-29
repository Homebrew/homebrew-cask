cask 'chef-workstation' do
  version '0.17.5'
  sha256 'e9b9165a80222900a1e421f7ad72d2f8252bc0f46175162e43b8cf271b2d2207'

  url "https://packages.chef.io/files/stable/chef-workstation/#{version}/mac_os_x/10.13/chef-workstation-#{version}-1.dmg"
  name 'Chef Workstation'
  homepage 'https://docs.chef.io/workstation/'

  depends_on macos: '>= :high_sierra'

  pkg "chef-workstation-#{version}-1.pkg"

  uninstall quit:      'sh.chef.chef-workstation',
            pkgutil:   'com.getchef.pkg.chef-workstation',
            launchctl: 'io.chef.chef-workstation.app',
            delete:    [
                         '/Applications/Chef Workstation App.app',
                         '/opt/chef-workstation/',
                         '/usr/local/bin/berks',
                         '/usr/local/bin/chef',
                         '/usr/local/bin/chef-cli',
                         '/usr/local/bin/chef-analyze',
                         '/usr/local/bin/chef-apply',
                         '/usr/local/bin/chef-client',
                         '/usr/local/bin/chef-run',
                         '/usr/local/bin/chef-shell',
                         '/usr/local/bin/chef-solo',
                         '/usr/local/bin/chef-vault',
                         '/usr/local/bin/chefx',
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
                         '/usr/local/bin/uninstall_chef_workstation',
                       ]

  zap trash: '~/.chef-workstation/'
end
