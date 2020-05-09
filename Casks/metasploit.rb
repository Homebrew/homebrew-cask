cask 'metasploit' do
  version '5.0.89,20200508103014'
  sha256 '114cba7e1e8b39f70d156c84b6e48504d654c49a336ac582386ea2bba28efd1b'

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
