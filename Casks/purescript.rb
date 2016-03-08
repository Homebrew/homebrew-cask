cask 'purescript' do
  version '0.8.2'
  sha256 '74d1c270fa7b47222c50b8937563348b129c81c237aeb35a01a5fa54aff90867'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/purescript/purescript/releases/download/v#{version}/macos.tar.gz"
  appcast 'https://github.com/purescript/purescript/releases.atom',
          checkpoint: '4af76b3b642bad5a57a49ecafc167e3ea928be5bd441c8269479c9e31754300f'
  name 'PureScript'
  homepage 'http://purescript.org'
  license :mit

  binary 'purescript/psc'
  binary 'purescript/psc-bundle'
  binary 'purescript/psc-docs'
  binary 'purescript/psc-publish'
  binary 'purescript/psci'
end
