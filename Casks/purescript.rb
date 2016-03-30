cask 'purescript' do
  version '0.8.3'
  sha256 '1a405e4b22058f09dd8adbd0d1560ebbb58261bdc1a83def58552566fc51c2e7'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/purescript/purescript/releases/download/v#{version}/macos.tar.gz"
  appcast 'https://github.com/purescript/purescript/releases.atom',
          checkpoint: '14dfb093f5456b4d873401dd33bdba324b88a8e27537a2cc44f28e98ba3109b5'
  name 'PureScript'
  homepage 'http://purescript.org'
  license :mit

  binary 'purescript/psc'
  binary 'purescript/psc-bundle'
  binary 'purescript/psc-docs'
  binary 'purescript/psc-publish'
  binary 'purescript/psci'
end
