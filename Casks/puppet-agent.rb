cask 'puppet-agent' do
  if MacOS.version == :yosemite
    version '5.5.0-1'
    sha256 '3f30c36e9b39763839148aaea400193c7b52d8feea2765121f6dabace658ec25'
    # downloads.puppetlabs.com/mac was verified as official when first introduced to the cask
    url "https://downloads.puppetlabs.com/mac/puppet/10.10/x86_64/puppet-agent-#{version}.osx10.10.dmg"
    appcast 'https://downloads.puppetlabs.com/mac/puppet/10.10/x86_64/',
            checkpoint: '8844637d47b43fcda91540ba43a472aeb6402d16eaef2559d04129885208af26'
  elsif MacOS.version == :el_capitan
    version '5.5.0-1'
    sha256 'fe60c24d2b964f161599bf4594c9e871f161707375b81c6b1e998e8cfce13058'
    # downloads.puppetlabs.com/mac was verified as official when first introduced to the cask
    url "https://downloads.puppetlabs.com/mac/puppet/10.11/x86_64/puppet-agent-#{version}.osx10.11.dmg"
    appcast 'https://downloads.puppetlabs.com/mac/puppet/10.11/x86_64/',
            checkpoint: '97c3c7d2f8fa00bb2905b724b564953dfce555df9db962d0209dbfeea14cbcf1'
  elsif MacOS.version == :sierra
    version '5.5.1-1'
    sha256 '18c539bd17c1f7522284c7bb4e830adf5805b7d1dc6c1c53b128d1cf01070f49'
    # downloads.puppetlabs.com/mac was verified as official when first introduced to the cask
    url "https://downloads.puppetlabs.com/mac/puppet/10.12/x86_64/puppet-agent-#{version}.osx10.12.dmg"
    appcast 'https://downloads.puppetlabs.com/mac/puppet/10.12/x86_64/',
            checkpoint: '96f69021c238e80f5a71bf81e1e7f283133693dbe9ce2c1d93cbd5eb690b104c'
  else
    version '5.5.1-1'
    sha256 'c3bfa8cc4114310225b71003816493da3d05b380c86ca5ef90eb42e5d880d625'
    # downloads.puppetlabs.com/mac was verified as official when first introduced to the cask
    url "https://downloads.puppetlabs.com/mac/puppet/10.13/x86_64/puppet-agent-#{version}.osx10.13.dmg"
    appcast 'https://downloads.puppetlabs.com/mac/puppet/10.13/x86_64/',
            checkpoint: '34687abad78d9b260d0145705bf5f673ee28593d7a49fed1a7e342797a40983f'
  end

  name 'Puppet Agent'
  homepage "https://docs.puppet.com/puppet/#{version.major_minor}/about_agent.html"

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
