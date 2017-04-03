cask 'metasploit' do
  version '4.14.6,20170331092309'
  sha256 'bda1f67fc35fec602ea5dc2f98bf694c12e0b2efb11d6abf8b76e51564a7be85'

  url "https://osx.metasploit.com/metasploit-framework-#{version.major_minor_patch}+#{version.after_comma}-1rapid7-1.pkg"
  appcast 'https://osx.metasploit.com/LATEST',
          checkpoint: 'dc10656b97bd5d5cdfcc96437ef4430a8d48d4bc2ae3a07b523f4d01066d3d32'
  name 'Metasploit Framework'
  homepage 'https://www.metasploit.com/'
  gpg "#{url}.asc", key_id: '2007B954'

  depends_on formula: %w[
                        nmap
                        postgresql
                      ]

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
