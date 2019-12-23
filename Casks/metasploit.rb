cask 'metasploit' do
  version '5.0.66,20191223113728'
  sha256 '7fb2595a1c0f6d2a1667490aa06764fb9a755da8481a96ea5dd46329c2c5066a'

  url "https://osx.metasploit.com/metasploit-framework-#{version.before_comma}+#{version.after_comma}-1rapid7-1.pkg"
  appcast 'https://osx.metasploit.com/LATEST'
  name 'Metasploit Framework'
  homepage 'https://www.metasploit.com/'

  depends_on formula: 'nmap'

  pkg "metasploit-framework-#{version.before_comma} #{version.after_comma}-1rapid7-1.pkg"
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
