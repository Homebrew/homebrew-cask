cask 'puppet-agent' do
  version '1.10.9-1'

  if MacOS.version == :yosemite
    sha256 'e9c2dd30c2a81cf004f168782e2cc49161e2bd4ea041e43116a7d0be5b854dfb'
    # downloads.puppetlabs.com/mac was verified as official when first introduced to the cask
    url "https://downloads.puppetlabs.com/mac/10.10/PC1/x86_64/puppet-agent-#{version}.osx10.10.dmg"
  elsif MacOS.version == :el_capitan
    sha256 'e37067d3a337492021895ca14a60e50be4eea82e0b9c431b63ecc95b63bf4876'
    # downloads.puppetlabs.com/mac was verified as official when first introduced to the cask
    url "https://downloads.puppetlabs.com/mac/10.11/PC1/x86_64/puppet-agent-#{version}.osx10.11.dmg"
  else
    sha256 '8657902ca7aaffeebc16465a68f1b583844214fb874513f43e9f27fb49f775f7'
    # downloads.puppetlabs.com/mac was verified as official when first introduced to the cask
    url "https://downloads.puppetlabs.com/mac/10.12/PC1/x86_64/puppet-agent-#{version}.osx10.12.dmg"
    appcast 'https://downloads.puppetlabs.com/mac/10.12/PC1/x86_64/',
            checkpoint: '65fd80d62d954ecf8f13e309eb7721a385c1299740421f57c1c35bac6eee78bb'
  end

  name 'Puppet Agent'
  homepage 'https://docs.puppet.com/puppet/4.5/about_agent.html'

  depends_on macos: '>= :yosemite'

  pkg "puppet-agent-#{version}-installer.pkg"

  uninstall launchctl: ['puppet', 'pxp-agent', 'mcollective'],
            pkgutil:   'com.puppetlabs.puppet-agent'

  zap trash: '~/.puppetlabs'
end
