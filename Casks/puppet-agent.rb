cask 'puppet-agent' do
  version '1.10.1-1'

  if MacOS.version == :yosemite
    sha256 '18e6eb90656e90f98ee4197a442a0d40bfb2a2e72ea0582e514429322dd75eb0'
  elsif MacOS.version == :el_capitan
    sha256 '8bb89eaf4b4b36e8e2937bfe888a2464fbadd9797142c8c534d4c3a6152c1c53'
  else
    sha256 '64c72aeeab9fa3e06b5317ea3d32145ee34be88df4f8b5d667b5fead2a863679'
  end

  # downloads.puppetlabs.com was verified as official when first introduced to the cask
  url "https://downloads.puppetlabs.com/mac/#{MacOS.version}/PC1/x86_64/puppet-agent-#{version}.osx#{MacOS.version}.dmg"
  appcast 'https://downloads.puppetlabs.com/mac/10.12/PC1/x86_64/',
          checkpoint: '3cb97715d7f9e1b0afe3d2a7736ab8390b6b02bd1d7db79db6d9e4e41ad74640'
  name 'Puppet Agent'
  homepage 'https://docs.puppet.com/puppet/4.5/about_agent.html'

  depends_on macos: '>= :yosemite'

  pkg "puppet-agent-#{version}-installer.pkg"

  uninstall launchctl: %w[puppet pxp-agent mcollective],
            pkgutil:   'com.puppetlabs.puppet-agent'

  zap delete: '~/.puppetlabs'
end
