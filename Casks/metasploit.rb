cask 'metasploit' do
  version '4.14.28+20170617092236'
  sha256 '8a76196f8b57373a7a6a11ef37b5e98fd28dd1ea5d327cb252e3cb7b4fa4a316'

  url "https://osx.metasploit.com/metasploit-framework-#{version}-1rapid7-1.pkg"
  appcast 'https://osx.metasploit.com/LATEST',
          checkpoint: 'f218cb29c407e42fb5acc3e0010ad217ad7969ee87fdee3bac056a1376f9e5ba'
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

  uninstall_preflight do
    system_command '/bin/rm',
                   args: ['-rf', '/opt/metasploit-framework'],
                   sudo: true
  end

  uninstall pkgutil: '.*metasploit.*'
end
