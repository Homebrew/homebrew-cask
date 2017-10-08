cask 'pdk' do
  version '1.1.0'

  if MacOS.version == :sierra
    sha256 'f3549593002fb84a2ed5e2805a4e802a8915aa6bb67c5c27688433f882d994e1'
  elsif MacOS.version == :el_capitan
    sha256 '15488436f695671f8d5fc790fa250a55bf6ad0601933a53cb440fb8e14a270a2'
  end

  # pm.puppetlabs.com was verified as official when first introduced to the cask
  url "https://pm.puppetlabs.com/cgi-bin/pdk_download.cgi?dist=osx&rel=#{MacOS.version}&arch=x86_64&ver=#{version}.0"
  name 'Puppet Development Kit'
  homepage 'https://github.com/puppetlabs/pdk'

  depends_on macos: '>= :el_capitan'

  pkg "pdk-#{version}.0-1-installer.pkg"

  uninstall pkgutil: 'com.puppetlabs.pdk'
end
