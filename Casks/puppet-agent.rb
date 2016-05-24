cask 'puppet-agent' do
  version '1.5.0'

  if MacOS.release == :el_capitan
    sha256 'd92a12ed3ab7aede17d21333c3bb92c3987559932291b4760210cf1e2ca64b07'
  elsif MacOS.release == :yosemite
    sha256 'ee4ee7004c63a8a2cc4680bff6d76ee5bfab22449b60a05505a576e9a8042257'
  elsif MacOS.release == :mavericks
    sha256 'a56f1360616ab91bbd024658b536ada07083391747fb67c9874aa33effae5f80'
  end

  # downloads.puppetlabs.com was verified as official when first introduced to the cask
  url "https://downloads.puppetlabs.com/mac/#{MacOS.release}/PC1/x86_64/puppet-agent-#{version}-1.osx#{MacOS.release}.dmg"
  name 'Puppet Agent'
  homepage 'https://docs.puppet.com/puppet/4.5/reference/about_agent.html'
  license :oss # all Apache 2 except for the vendored OpenSSL + Ruby

  pkg 'puppet-agent-1.5.0-1-installer.pkg'

  uninstall launchctl: %w[puppet pxp-agent mcollective],
            pkgutil:   'com.puppetlabs.puppet-agent'

  zap delete: '~/.puppetlabs'
end
