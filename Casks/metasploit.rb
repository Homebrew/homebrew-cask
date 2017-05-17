cask 'metasploit' do
  version '4.14.18+20170516092253'
  sha256 '054ca9dd96748115e6df08d1586937d53f27b3d408ff5d98884d350ef9d77951'

  url "https://osx.metasploit.com/metasploit-framework-#{version}-1rapid7-1.pkg"
  appcast 'https://osx.metasploit.com/LATEST',
          checkpoint: 'ea46d8e5c984cfb97f4b1058a7a3f4c2c24fb642a78e4aa175fe87530826d1bf'
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
  binary '/opt/metasploit-framework/bin/msfremove'
  binary '/opt/metasploit-framework/bin/msfrop'
  binary '/opt/metasploit-framework/bin/msfrpc'
  binary '/opt/metasploit-framework/bin/msfrpcd'
  binary '/opt/metasploit-framework/bin/msfupdate'
  binary '/opt/metasploit-framework/bin/msfvenom'

  uninstall pkgutil: '.*metasploit.*',
            delete:  '/opt/metasploit-framework'
end
