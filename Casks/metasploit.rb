cask 'metasploit' do
  version :latest
  sha256 :no_check

  url 'https://osx.metasploit.com/metasploitframework-latest.pkg'
  appcast 'https://github.com/rapid7/metasploit-framework/releases.atom',
          checkpoint: '5de0fa55d535d005b078370eaaf3e50b4428a25041fdae604e4e0d66413595a6'
  name 'Metasploit'
  homepage 'https://www.metasploit.com'
  license :bsd

  pkg 'metasploitframework-latest.pkg'

  uninstall script:  { executable: 'uninstall.tool', input: %w[Yes] },
            pkgutil: 'test.rapid7releaseengineeringr7rerapid7com.pkg.metasploit-framework'

  zap delete: '~/.msf4'
end
