cask 'inspec' do
  version '1.20.0-1'
  sha256 'b00c795674952a3cc39b746f2e2eecc63739159ad990e84cf3a59e801d0cc07e'

  # packages.chef.io was verified as official when first introduced to the cask
  url "https://packages.chef.io/files/stable/inspec/#{version.major_minor_patch}/mac_os_x/10.12/inspec-#{version}.dmg"
  appcast 'https://github.com/chef/inspec/releases.atom',
          checkpoint: '452cbaaec7c1befff25f71d458b269b17e9e5c4d9162cef87d7ce9014c556017'
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
