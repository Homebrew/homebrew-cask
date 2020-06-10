cask 'chef-workstation' do
  version '20.6.62'
  sha256 'd13d6dcdb69c0c7843e2e0f07765138d6eb17aa47854b3b721ecc97e2e7911e7'

  url "https://packages.chef.io/files/stable/chef-workstation/#{version}/mac_os_x/10.14/chef-workstation-#{version}-1.dmg"
  appcast 'https://omnitruck.chef.io/stable/chef-workstation/metadata?p=mac_os_x&pv=10.14&m=x86_64&v=latest'
  name 'Chef Workstation'
  homepage 'https://docs.chef.io/workstation/'

  depends_on macos: '>= :high_sierra'

  pkg "chef-workstation-#{version}-1.pkg"

  uninstall quit:      'sh.chef.chef-workstation',
            pkgutil:   'com.getchef.pkg.chef-workstation',
            launchctl: 'io.chef.chef-workstation.app',
            script:    {
                         executable: '/opt/chef-workstation/bin/uninstall_chef_workstation',
                         sudo:       true,
                       }

  zap trash: '~/.chef-workstation/'
end
