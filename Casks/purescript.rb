cask 'purescript' do
  version '0.8.5'
  sha256 'c80d786e92fd274204a45f8422fc06f5feb2c5db145d117bf1a694135990e59b'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/purescript/purescript/releases/download/v#{version}/macos.tar.gz"
  appcast 'https://github.com/purescript/purescript/releases.atom',
          checkpoint: 'e96922ccbd64436109b67cf8f9760e261efff65989d4c3a947b5e966677047d0'
  name 'PureScript'
  homepage 'http://purescript.org'
  license :mit

  binary 'purescript/psc'
  binary 'purescript/psc-bundle'
  binary 'purescript/psc-docs'
  binary 'purescript/psc-publish'
  binary 'purescript/psci'
end
