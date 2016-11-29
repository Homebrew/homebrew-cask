cask 'puppet-agent' do
  version '1.8.0-1'

  if MacOS.version == :mavericks
    sha256 '5bae76b8382f3ba8c221abda941c494a11d3aeb49980cb7d82cc2d6cef842df0'
  elsif MacOS.version == :yosemite
    sha256 'db00b905c4a9ea45c04eaf530111cc46ef9c9219e2553b907e3023e5ac02e4dc'
  elsif MacOS.version == :el_capitan
    sha256 '477da11a3055e4a3a3790d3006cb68a1e4fa68bf16f2a715215b2c8efc061753'
  else # MacOS.version == :sierra
    sha256 'be8aa9fe9905ff4daca94be5cd6555e58cadfa4073ffb19e2e9f1edb9344e9f6'
  end

  # downloads.puppetlabs.com was verified as official when first introduced to the cask
  url "https://downloads.puppetlabs.com/mac/#{MacOS.version}/PC1/x86_64/puppet-agent-#{version}.osx#{MacOS.version}.dmg"
  name 'Puppet Agent'
  homepage 'https://docs.puppet.com/puppet/4.5/reference/about_agent.html'

  depends_on macos: [
                      :mavericks,
                      :yosemite,
                      :el_capitan,
                      :sierra,
                    ]

  pkg "puppet-agent-#{version}-installer.pkg"

  uninstall launchctl: %w[puppet pxp-agent mcollective],
            pkgutil:   'com.puppetlabs.puppet-agent'

  zap delete: '~/.puppetlabs'
end
