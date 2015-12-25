cask 'purescript' do
  version '0.7.6.1'
  sha256 'a98ec09df6512c46ee96557bd0cf4a7937e4aabd6adf81177e7a5b4cdf061763'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/purescript/purescript/releases/download/v#{version}/macos.tar.gz"
  appcast 'https://github.com/purescript/purescript/releases.atom',
          :sha256 => 'dc2925ca33ff6ac14858b7573e0922e2e98862aba4cae180e7106c3ed2c1c70a'
  name 'PureScript'
  homepage 'http://purescript.org'
  license :mit

  binary 'purescript/psc'
  binary 'purescript/psc-bundle'
  binary 'purescript/psc-docs'
  binary 'purescript/psc-publish'
  binary 'purescript/psci'
end
