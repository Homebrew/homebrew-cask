cask 'purescript' do
  version '0.8.4'
  sha256 'd9c0881b1d9dae4aad7d56802ed10e1da4f26625d01e91400171c5ceddbcbd02'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/purescript/purescript/releases/download/v#{version}/macos.tar.gz"
  appcast 'https://github.com/purescript/purescript/releases.atom',
          checkpoint: '58bf303b7216b5546f3b2f6273267eca9888c54b3ffd49e375357d685d649a2b'
  name 'PureScript'
  homepage 'http://purescript.org'
  license :mit

  binary 'purescript/psc'
  binary 'purescript/psc-bundle'
  binary 'purescript/psc-docs'
  binary 'purescript/psc-publish'
  binary 'purescript/psci'
end
