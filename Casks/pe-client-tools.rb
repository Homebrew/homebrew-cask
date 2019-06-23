cask 'pe-client-tools' do
  case MacOS.version
  when '10.12'
    os_ver = '10.12'
    pe_ver = '2019.1.0'
    version '19.1.1'
    sha256 'c1020bfbc30e2803fe4ed0a8647af5f6391748fe50cde45850b96114829e0070'
  else
    os_ver = '10.13'
    pe_ver = '2019.1.0'
    version '19.1.1'
    sha256 '524156dce4ed7f01c2ccb43510bfbb7eaa98eb845009f64d7c0678cb81aefb2e'
  end

  pe_ver_short = '2019.1.0'[%r{^(\d+\.\d+)}]

  # Download URL from https://puppet.com/download-puppet-enterprise-client-tools
  url "https://pm.puppet.com/pe-client-tools/#{pe_ver}/#{version}/repos/apple/#{os_ver}/PC1/x86_64/pe-client-tools-#{version}-1.osx#{os_ver}.dmg"
  name 'Puppet Enterprise Client Tools Agent'
  homepage "https://puppet.com/docs/pe/#{pe_ver_short}/installing_pe_client_tools.html"

  depends_on macos: '>= 10.12'

  pkg "pe-client-tools-#{version}-1-installer.pkg"

  uninstall pkgutil: 'com.puppetlabs.pe-client-tools'

  zap trash: [
               '~/.puppetlabs/client-tools',
               '/etc/puppetlabs/client-tools',
             ]
end
