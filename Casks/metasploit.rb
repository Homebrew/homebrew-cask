cask 'metasploit' do
  version '5.0.12+20190315133632'
  sha256 '562d892e262e88cea7c84270303e83adb277d06cd25dcf216a67203f83727509'

  url "https://osx.metasploit.com/metasploit-framework-#{version}-1rapid7-1.pkg"
  appcast 'https://osx.metasploit.com/LATEST'
  name 'Metasploit Framework'
  homepage 'https://www.metasploit.com/'

  depends_on formula: 'nmap'

  pkg "metasploit-framework-#{version.tr('+', ' ')}-1rapid7-1.pkg"
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
  binary '/opt/metasploit-framework/bin/msfvenom'

  uninstall script: {
                      executable: '/opt/metasploit-framework/bin/msfremove',
                      input:      ['y'],
                      sudo:       true,
                    },
            rmdir:  '/opt/metasploit-framework'

  zap trash: '~/.msf4'
end
