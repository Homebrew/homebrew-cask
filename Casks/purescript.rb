cask 'purescript' do
  version '0.8.0'
  sha256 'a4eb3e55f141e6bebd2e148797d525ea1afe053831a6f0972c49f3bbf8a7243f'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/purescript/purescript/releases/download/v#{version}/macos.tar.gz"
  appcast 'https://github.com/purescript/purescript/releases.atom',
          checkpoint: '3e28bec2e4051e846cd4778884f9d690464aeae3b4535270a8812a9480c53c17'
  name 'PureScript'
  homepage 'http://purescript.org'
  license :mit

  binary 'purescript/psc'
  binary 'purescript/psc-bundle'
  binary 'purescript/psc-docs'
  binary 'purescript/psc-publish'
  binary 'purescript/psci'
end
