cask 'logdna-cli' do
  version '1.2.2'
  sha256 'd7d62422f20df8210b168404ba377c9c632e682e54005ce5ab608c720a181ccc'

  # github.com/logdna/logdna-cli was verified as official when first introduced to the cask
  url "https://github.com/logdna/logdna-cli/releases/download/#{version}/logdna-cli.pkg"
  appcast 'https://github.com/logdna/logdna-cli/releases.atom',
          checkpoint: '4c27044f3f87e451277966068e6d82526c2af20eda2adfe0a31e6a836720f24a'
  name 'LogDNA CLI'
  homepage 'https://logdna.com/'

  pkg 'logdna-cli.pkg'

  uninstall pkgutil: 'com.logdna.logdna-cli'
end
