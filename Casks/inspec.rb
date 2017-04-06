cask 'inspec' do
  version '1.19.1-1'
  sha256 '99b6b428570fb0e428df12ee2f2f1805c9e79a8b87fc08bcb7aa466e9ed32b81'

  # packages.chef.io was verified as official when first introduced to the cask
  url "https://packages.chef.io/files/stable/inspec/#{version.major_minor_patch}/mac_os_x/10.12/inspec-#{version}.dmg"
  appcast 'https://github.com/chef/inspec/releases.atom',
          checkpoint: '45f3d1ca5d9001841b04289c1b6eeb56333d1478a54ec31f19d632fba8fcaa75'
  name 'InSpec by Chef'
  homepage 'http://inspec.io/'

  pkg "inspec-#{version}.pkg"

  # As suggested in https://docs.chef.io/install_dk.html#mac-os-x
  uninstall_postflight do
    system_command '/usr/bin/find',
                   args: ['/usr/local/bin', '-lname', '/opt/inspec/*', '-delete'],
                   sudo: true
  end

  uninstall pkgutil: 'com.getchef.pkg.inspec',
            delete:  '/opt/inspec/'

  zap delete: '~/.inspec/'
end
