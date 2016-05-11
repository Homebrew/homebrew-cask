cask 'logdna-cli' do
  version '1.0.9'
  sha256 '76531e0538c9c8945ade50fc5707e1d34945b364a6475f38af6ccd499aad2aaa'

  url "https://github.com/logdna/logdna-cli/releases/download/#{version}/logdna-mac-cli.pkg"
  appcast 'https://github.com/logdna/logdna-cli/releases.atom',
          checkpoint: '9c67fddd3ec1be4675c32dc6078380d100a379a5bd6de9f34bcf4d4052e66301'
  name 'LogDNA CLI'
  homepage 'https://www.logdna.com/'
  license :mit

  pkg 'logdna-mac-cli.pkg'

  uninstall pkgutil: 'com.logdna.logdna-cli'
end
