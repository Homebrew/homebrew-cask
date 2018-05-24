cask 'puppet-bolt' do
  version '0.20.3'

  if MacOS.version == :el_capitan
    sha256 'd4cbc0a9c824cfa05dd540f7eaa5c036484bd651613a60ec7a929a22fb099441'
  elsif MacOS.version == :sierra
    sha256 'ca2407e8b258705d998b6d3143dcfb6d208a5453b02b09ab945ce5b21dd93d00'
  else
    sha256 'd623713f352a318fcdbc105a03c87faa055190819b171f1604e5e147579be21a'
  end

  # downloads.puppetlabs.com/mac was verified as official when first introduced to the cask
  url "http://downloads.puppetlabs.com/mac/#{MacOS.version}/PC1/x86_64/puppet-bolt-#{version}-1.osx#{MacOS.version}.dmg"
  name 'Puppet Bolt'
  homepage 'https://github.com/puppetlabs/bolt'

  depends_on macos: '>= 10.11'

  pkg "puppet-bolt-#{version}-1-installer.pkg"

  uninstall pkgutil: 'com.puppetlabs.puppet-bolt'
end
