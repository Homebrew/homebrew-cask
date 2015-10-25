cask :v1 => 'purescript' do
  version '0.7.5'
  sha256 '8b9a6a92c069e2fa934917196177edb14c8c041e6b391401bc5a4b2a1fc7fafc'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/purescript/purescript/releases/download/v#{version}/macos.tar.gz"
  appcast 'https://github.com/purescript/purescript/releases.atom'
  name 'PureScript'
  homepage 'http://purescript.org'
  license :mit

  binary 'purescript/psc'
  binary 'purescript/psc-bundle'
  binary 'purescript/psc-docs'
  binary 'purescript/psc-publish'
  binary 'purescript/psci'
end
