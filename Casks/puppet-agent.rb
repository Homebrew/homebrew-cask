cask 'puppet-agent' do
  version '5.5.0-1'

  if MacOS.version == :yosemite
    sha256 '3f30c36e9b39763839148aaea400193c7b52d8feea2765121f6dabace658ec25'
    # downloads.puppetlabs.com/mac was verified as official when first introduced to the cask
    url "https://downloads.puppetlabs.com/mac/puppet/10.10/x86_64/puppet-agent-#{version}.osx10.10.dmg"
    appcast 'https://downloads.puppetlabs.com/mac/puppet/10.10/x86_64/',
            checkpoint: '9ad9f85b679ab71548717af2e257c11862bd0a7c945db5c0c22448af3b04d3c8'
  elsif MacOS.version == :el_capitan
    sha256 'fe60c24d2b964f161599bf4594c9e871f161707375b81c6b1e998e8cfce13058'
    # downloads.puppetlabs.com/mac was verified as official when first introduced to the cask
    url "https://downloads.puppetlabs.com/mac/puppet/10.11/x86_64/puppet-agent-#{version}.osx10.11.dmg"
    appcast 'https://downloads.puppetlabs.com/mac/puppet/10.11/x86_64/',
            checkpoint: 'd0dbdfb38b2ba2526a4f9ab4241abbe3e3a8ccd7524f7998b3bcb3c348a317f8'
  elsif MacOS.version == :sierra
    sha256 '87940f718b9987b074ff00d94c74299d5a637a1a11a6e0792a26d956968a2bcd'
    # downloads.puppetlabs.com/mac was verified as official when first introduced to the cask
    url "https://downloads.puppetlabs.com/mac/puppet/10.12/x86_64/puppet-agent-#{version}.osx10.12.dmg"
    appcast 'https://downloads.puppetlabs.com/mac/puppet/10.12/x86_64/',
            checkpoint: '627ddd3f3d1b1099d65073ac873991861e5982f30a7821fb39683367ea262c3d'
  else
    sha256 '59b0eda644a40b8fe590fef3fda3a19b5434cf376ba7e6daf4236050935c2917'
    # downloads.puppetlabs.com/mac was verified as official when first introduced to the cask
    url "https://downloads.puppetlabs.com/mac/puppet/10.13/x86_64/puppet-agent-#{version}.osx10.13.dmg"
    appcast 'https://downloads.puppetlabs.com/mac/puppet/10.13/x86_64/',
            checkpoint: '408df781efc9697b2697f7101a870ce51f67e1e9686f2a282a5386fa7b6e01e3'
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
