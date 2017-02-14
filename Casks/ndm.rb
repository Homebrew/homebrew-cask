cask 'ndm' do
  version '1.0.0'
  sha256 'ed9c9c2af8abd382bee65d35124fd29399a1e43773dd05979022303b1fb83931'

  # github.com/720kb/ndm was verified as official when first introduced to the cask
  url "https://github.com/720kb/ndm/releases/download/v#{version}/ndm-#{version}.dmg"
  appcast 'https://github.com/720kb/ndm/releases.atom',
          checkpoint: 'f063615ef92ea1b9ba8d3157f24e968dcb36deb5c7223553b892899a3bdbea32'
  name 'ndm'
  homepage 'https://720kb.github.io/ndm/'

  app 'ndm.app'
end
