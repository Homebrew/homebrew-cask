cask 'inspec' do
  version '1.51.0-1'
  sha256 'b8007d337987cfd97dd63709fb8869357554009e6f56ff6079b67440104ab554'

  # packages.chef.io was verified as official when first introduced to the cask
  url "https://packages.chef.io/files/stable/inspec/#{version.major_minor_patch}/mac_os_x/10.13/inspec-#{version}.dmg"
  appcast 'https://github.com/chef/inspec/releases.atom',
          checkpoint: 'efe4d78c3e64f629b0afa195b650082f001cf10c15f43bd37bd0249fd518b8a6'
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

  zap trash: '~/.inspec/'
end
