cask 'inspec' do
  version '1.28.1-1'
  sha256 'b869468f68925d783f1ac99514b28e79c37befbc33a2391affa11d057a400261'

  # packages.chef.io was verified as official when first introduced to the cask
  url "https://packages.chef.io/files/stable/inspec/#{version.major_minor_patch}/mac_os_x/10.12/inspec-#{version}.dmg"
  appcast 'https://github.com/chef/inspec/releases.atom',
          checkpoint: 'c33d2ec8a6abc1d5872bf1aa4d52dccc0dcbd554571463f8363b801eba87923f'
  name 'InSpec by Chef'
  homepage 'https://www.inspec.io/'

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
