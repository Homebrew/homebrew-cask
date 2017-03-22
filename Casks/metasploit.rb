cask 'metasploit' do
  version '4.14.3'
  sha256 '1adb8fc8911ed229c8c3d86e5de680f39054ec7a08e1b0794899260b20ca6e2b'

  url 'https://osx.metasploit.com/metasploitframework-latest.pkg'
  appcast 'https://github.com/rapid7/metasploit-framework/releases.atom',
          checkpoint: '73b285460f9e7304a63a269de121e039ad3e71150a3d9351199398fb882bd505'
  name 'Metasploit Framework'
  homepage 'https://www.metasploit.com/'

  depends_on formula: %w[
                        nmap
                        postgresql
                      ]

  pkg 'metasploitframework-latest.pkg'

  installer script:       '/opt/metasploit-framework/bin/msfconsole',
            must_succeed: false

  uninstall script:   {
                        executable: '/opt/metasploit-framework/bin/msfremove',
                        input:      %w[Yes],
                        sudo:       true,
                      },
            pkgutil:  '.*metasploit.*',
            delete:   '/opt/metasploit-framework'
end
