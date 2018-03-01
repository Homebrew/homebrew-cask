cask 'inspec' do
  version '2.0.17-1'
  sha256 'e42a9e2c1de402692a012e2ca57b990fa9bf5a60cd8360071a2f929eff2947f8'

  # packages.chef.io was verified as official when first introduced to the cask
  url "https://packages.chef.io/files/stable/inspec/#{version.major_minor_patch}/mac_os_x/10.13/inspec-#{version}.dmg"
  appcast 'https://github.com/chef/inspec/releases.atom',
          checkpoint: '5cac4dd83d3c199f3f45e3932f0c45a1b68065a7839f3e9d3671f72fc0bd0895'
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
