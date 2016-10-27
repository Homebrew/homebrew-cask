cask 'inspec' do
  version '1.0.0-1'
  sha256 '6bf1674a461cbc616b5e91ea5b426c226b00ffda7082add155bd6d0d1b33ba9d'

  # packages.chef.io was verified as official when first introduced to the cask
  url "https://packages.chef.io/stable/mac_os_x/10.11/inspec-#{version}.dmg"
  appcast 'https://github.com/chef/inspec/releases.atom',
          checkpoint: 'c9905934b7e515e3f0486187dabee2bb43dc7a63677f0fdc0ca85bc0f316597a'
  name 'InSpec by Chef'
  homepage 'http://inspec.io/'

  pkg "inspec-#{version}.pkg"

  # As suggested in https://docs.chef.io/install_dk.html#mac-os-x
  uninstall_postflight do
    system "sudo find /usr/local/bin -lname '/opt/inspec/*' -delete"
  end

  uninstall pkgutil: 'com.getchef.pkg.inspec',
            delete:  '/opt/inspec/'

  zap delete: '~/.inspec/'
end
