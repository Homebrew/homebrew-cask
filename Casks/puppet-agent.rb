cask 'puppet-agent' do
  version '1.10.4-1'

  if MacOS.version == :yosemite
    sha256 'e9c2dd30c2a81cf004f168782e2cc49161e2bd4ea041e43116a7d0be5b854dfb'
    # downloads.puppetlabs.com/mac was verified as official when first introduced to the cask
    url "https://downloads.puppetlabs.com/mac/10.10/PC1/x86_64/puppet-agent-#{version}.osx10.10.dmg"
  elsif MacOS.version == :el_capitan
    sha256 'e37067d3a337492021895ca14a60e50be4eea82e0b9c431b63ecc95b63bf4876'
    # downloads.puppetlabs.com/mac was verified as official when first introduced to the cask
    url "https://downloads.puppetlabs.com/mac/10.11/PC1/x86_64/puppet-agent-#{version}.osx10.11.dmg"
  else
    sha256 '32ff2b3dafbc9e98df979d4a3bb0ebc42963277430a5f5be7ae07e5123bbd143'
    # downloads.puppetlabs.com/mac was verified as official when first introduced to the cask
    url "https://downloads.puppetlabs.com/mac/10.12/PC1/x86_64/puppet-agent-#{version}.osx10.12.dmg"
    appcast 'https://downloads.puppetlabs.com/mac/10.12/PC1/x86_64/',
            checkpoint: '695383430ebcfa2ff989958986134a1c07bc2bebd46abeb4d731dc5e49f6d82b'
  end

  name 'Puppet Agent'
  homepage 'https://docs.puppet.com/puppet/4.5/about_agent.html'

  depends_on macos: '>= :yosemite'

  pkg "puppet-agent-#{version}-installer.pkg"

  uninstall launchctl: ['puppet', 'pxp-agent', 'mcollective'],
            pkgutil:   'com.puppetlabs.puppet-agent'

  zap trash: '~/.puppetlabs'
end
