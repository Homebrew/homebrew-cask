cask 'metasploit' do
  version '4.16.17+20171201130403'
  sha256 '4e368dd8c64f4323ac2cdd54a7f1db307d4b7890d6da92533b07060c970e79ad'

  url "https://osx.metasploit.com/metasploit-framework-#{version}-1rapid7-1.pkg"
  appcast 'https://osx.metasploit.com/LATEST',
          checkpoint: '0088dfef55a5d5e5c7aa9830c44b62781d168df9070519903c724451e81e0d64'
  name 'Metasploit Framework'
  homepage 'https://www.metasploit.com/'
  gpg "#{url}.asc", key_id: '2007B954'

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
