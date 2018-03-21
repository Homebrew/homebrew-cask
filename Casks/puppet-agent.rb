cask 'puppet-agent' do
  version '5.4.0-1'

  if MacOS.version == :yosemite
    sha256 'f58df568221c54d22345367b129af2027da49bf898a3fcb740bf2567aacac8c1'
    # downloads.puppetlabs.com/mac was verified as official when first introduced to the cask
    url "https://downloads.puppetlabs.com/mac/puppet/10.10/x86_64/puppet-agent-#{version}.osx10.10.dmg"
    appcast 'https://downloads.puppetlabs.com/mac/puppet/10.10/x86_64/',
            checkpoint: '98908c8146c5a8dc74c1dd4e9edc7fbe3fa0e377e37f2ecc22d05c4b8d12e04c'
  elsif MacOS.version == :el_capitan
    sha256 '142602889c389a997d7a4f722ed22cc9070b52f47dfe87a2613b5aaef484b383'
    # downloads.puppetlabs.com/mac was verified as official when first introduced to the cask
    url "https://downloads.puppetlabs.com/mac/puppet/10.11/x86_64/puppet-agent-#{version}.osx10.11.dmg"
    appcast 'https://downloads.puppetlabs.com/mac/puppet/10.11/x86_64/',
            checkpoint: 'bf5e8da65789f667913a4f6eb933995d82196dc6d9fb17bf9187d0b598636438'
  elsif MacOS.version == :sierra
    sha256 '7deaa981a1e9a898b9a8c9f6a95c9518694681f7b65db53a02de402739e9c2d9'
    # downloads.puppetlabs.com/mac was verified as official when first introduced to the cask
    url "https://downloads.puppetlabs.com/mac/puppet/10.12/x86_64/puppet-agent-#{version}.osx10.12.dmg"
    appcast 'https://downloads.puppetlabs.com/mac/puppet/10.12/x86_64/',
            checkpoint: '8524abe2cc62de4b6bddea8aa99ec2b5728b2067750517bd220bd47bf8f9d572'
  else
    sha256 '9ad5d205fe8979beb93a75a18f1d70beb873ad73355ddfb362a6283965b2cac7'
    # downloads.puppetlabs.com/mac was verified as official when first introduced to the cask
    url "https://downloads.puppetlabs.com/mac/puppet/10.13/x86_64/puppet-agent-#{version}.osx10.13.dmg"
    appcast 'https://downloads.puppetlabs.com/mac/puppet/10.13/x86_64/',
            checkpoint: 'dd42205bf01e8063855d35a7d6828289f7be6b2ab6ea7efb2aa18a601c51104e'
  end

  name 'Puppet Agent'
  homepage 'https://docs.puppet.com/puppet/5.4/about_agent.html'

  depends_on macos: '>= :yosemite'

  pkg "puppet-agent-#{version}-installer.pkg"

  uninstall launchctl: [
                         'puppet',
                         'pxp-agent',
                         'mcollective',
                       ],
            pkgutil:   'com.puppetlabs.puppet-agent'

  zap trash: [
               '~/.puppetlabs',
               '/etc/puppetlabs',
             ]
end
