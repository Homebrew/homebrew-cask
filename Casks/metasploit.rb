cask 'metasploit' do
  version '4.17.14+20180915094422'
  sha256 '7c395451be6fa2966d81c7897af790eb4b110038dd3055043ae7cc6bee365434'

  url "https://osx.metasploit.com/metasploit-framework-#{version}-1rapid7-1.pkg"
  appcast 'https://osx.metasploit.com/LATEST'
  name 'Metasploit Framework'
  homepage 'https://www.metasploit.com/'

  depends_on formula: 'nmap'

  pkg "metasploit-framework-#{version.gsub('+', ' ')}-1rapid7-1.pkg"
  binary '/opt/metasploit-framework/bin/metasploit-aggregator'
  binary '/opt/metasploit-framework/bin/msfbinscan'
  binary '/opt/metasploit-framework/bin/msfconsole'
  binary '/opt/metasploit-framework/bin/msfd'
  binary '/opt/metasploit-framework/bin/msfdb'
  binary '/opt/metasploit-framework/bin/msfelfscan'
  binary '/opt/metasploit-framework/bin/msfmachscan'
  binary '/opt/metasploit-framework/bin/msfpescan'
  binary '/opt/metasploit-framework/bin/msfrop'
  binary '/opt/metasploit-framework/bin/msfrpc'
  binary '/opt/metasploit-framework/bin/msfrpcd'
  binary '/opt/metasploit-framework/bin/msfupdate'
  binary '/opt/metasploit-framework/bin/msfvenom'

  uninstall script: {
                      executable: '/opt/metasploit-framework/bin/msfremove',
                      input:      ['y'],
                      sudo:       true,
                    },
            rmdir:  '/opt/metasploit-framework'

  zap trash: '~/.msf4'
end
