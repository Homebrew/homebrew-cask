cask 'metasploit' do
  version '4.14.15,20170430092248.git.3.c386d4e'
  sha256 'b26049524ab0a00f56d5670c0744b05359d8ef84399cb1182d0bdb0b5778781f'

  url "https://osx.metasploit.com/metasploit-framework-#{version.major_minor_patch}+#{version.after_comma}-1rapid7-1.pkg"
  appcast 'https://osx.metasploit.com/LATEST',
          checkpoint: '36ed5175362ec4bbc43a4b328f9f44237528357aee89cd8df5ae1b3f244d5444'
  name 'Metasploit Framework'
  homepage 'https://www.metasploit.com/'
  gpg "#{url}.asc", key_id: '2007B954'

  depends_on formula: 'nmap'

  pkg "metasploit-framework-#{version.major_minor_patch}+#{version.after_comma}-1rapid7-1.pkg"
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
