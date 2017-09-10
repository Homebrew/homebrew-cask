cask 'metasploit' do
  version '4.16.7+20170909101846'
  sha256 'cf01fcbac9f88db9acf4a0789f4c5ac312f45127c89763e39902093d8e62a930'

  url "https://osx.metasploit.com/metasploit-framework-#{version}-1rapid7-1.pkg"
  appcast 'https://osx.metasploit.com/LATEST',
          checkpoint: 'ef9daeddded86412c397770f19d401fd0139bb6425e3f4b3564861a4ef47ff34'
  name 'Metasploit Framework'
  homepage 'https://www.metasploit.com/'
  gpg "#{url}.asc", key_id: '2007B954'

  depends_on formula: 'nmap'

  pkg "metasploit-framework-#{version}-1rapid7-1.pkg"
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
