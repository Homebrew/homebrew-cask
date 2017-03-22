cask 'metasploit' do
  version '4.4.13'
  sha256 '1adb8fc8911ed229c8c3d86e5de680f39054ec7a08e1b0794899260b20ca6e2b'

  url 'https://osx.metasploit.com/metasploitframework-latest.pkg'
  appcast 'https://github.com/rapid7/metasploit-framework/releases.atom',
          checkpoint: '5de0fa55d535d005b078370eaaf3e50b4428a25041fdae604e4e0d66413595a6'
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
            rmdir:    '/opt/metasploit-framework'
end
