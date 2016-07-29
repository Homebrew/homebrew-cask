cask 'puppet-agent' do
  version '1.5.2-1'

  if MacOS.release == :mavericks
    sha256 'bc75b261b2c1e5ed18599e63848e22fd4fca440242ba31391617a9a59806ef7a'
  elsif MacOS.release == :yosemite
    sha256 'ba9d22b4992f96f6e100e689f92f81e4cabb0459730459d9b53fe54c59b392a4'
  else # MacOS.release == :el_capitan
    sha256 '67613f23e6e7708fd1f8ddaa8528260cce176c4d46d7c3d666c236ea0edd1c8c'
  end

  # downloads.puppetlabs.com was verified as official when first introduced to the cask
  url "https://downloads.puppetlabs.com/mac/#{MacOS.release}/PC1/x86_64/puppet-agent-#{version}.osx#{MacOS.release}.dmg"
  name 'Puppet Agent'
  homepage 'https://docs.puppet.com/puppet/4.5/reference/about_agent.html'
  license :oss # all Apache 2 except for the vendored OpenSSL + Ruby

  depends_on macos: [
                      :mavericks,
                      :yosemite,
                      :el_capitan,
                    ]

  pkg "puppet-agent-#{version}-installer.pkg"

  uninstall launchctl: %w[puppet pxp-agent mcollective],
            pkgutil:   'com.puppetlabs.puppet-agent'

  zap delete: '~/.puppetlabs'
end
