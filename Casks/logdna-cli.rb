cask 'logdna-cli' do
  version '1.2.1'
  sha256 '55f692548582ba72ecde64bc2a2318ed4c92e75e788d789ad88a1f147e9db28d'

  # github.com/logdna/logdna-cli was verified as official when first introduced to the cask
  url "https://github.com/logdna/logdna-cli/releases/download/#{version}/logdna-cli.pkg"
  appcast 'https://github.com/logdna/logdna-cli/releases.atom',
          checkpoint: 'f0b4a7663d8f48a3e6c810191834afe8a60d723c5d026f2e7b5c8539ff9d3533'
  name 'LogDNA CLI'
  homepage 'https://logdna.com/'

  pkg 'logdna-cli.pkg'

  uninstall pkgutil: 'com.logdna.logdna-cli'
end
