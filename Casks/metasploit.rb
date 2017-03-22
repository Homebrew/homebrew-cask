cask 'metasploit' do
  version :latest
  sha256 :no_check

  url 'https://osx.metasploit.com/metasploitframework-latest.pkg'
  appcast 'https://github.com/rapid7/metasploit-framework/releases.atom',
          checkpoint: '5de0fa55d535d005b078370eaaf3e50b4428a25041fdae604e4e0d66413595a6'
  name 'Metasploit Framework'
  homepage 'https://www.metasploit.com'
  license :bsd

  depends_on formula: [
                        'nmap',
                        'postgresql'
                      ]

  pkg 'metasploitframework-latest.pkg'

  installer script:       '/opt/metasploit-framework/bin/msfconsole',
            must_succeed: false

  uninstall  script:  {
                        executable: '/opt/metasploit-framework/bin/msfremove',
                        input:      %w[Yes],
                        sudo:       true
                      },
            pkgutil:  '.*metasploit.*',
              rmdir:  '/opt/metasploit-framework'
end
