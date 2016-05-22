cask 'puppet-agent' do
  version '1.4.2'

  if MacOS.release == :el_capitan
    sha256 'bb94f785c253614edd2e82e89fdbb4dabe800f0dc009b5658e0d42e11e875ff9'
  elsif MacOS.release == :yosemite
    sha256 '90d9188dc75748171cc920159724877a60d6e3d9c8792d288cbac0acebe1af43'
  elsif MacOS.release == :mavericks
    sha256 'c119526e30fa93917c327109e45d0297bec2c2f443ede1f80d5ce694db1d64b7'
  end

  # downloads.puppetlabs.com was verified as official when first introduced to the cask
  url "https://downloads.puppetlabs.com/mac/#{MacOS.release}/PC1/x86_64/puppet-agent-#{version}-1.osx#{MacOS.release}.dmg"
  name 'Puppet Agent'
  homepage 'https://docs.puppet.com/puppet/4.4/reference/about_agent.html'
  license :oss # all Apache 2 except for the vendored OpenSSL + Ruby

  pkg 'puppet-agent-1.4.2-1-installer.pkg'

  uninstall launchctl: %w[puppet pxp-agent mcollective],
            pkgutil:   'com.puppetlabs.puppet-agent'

  zap delete: '~/.puppetlabs'
end
