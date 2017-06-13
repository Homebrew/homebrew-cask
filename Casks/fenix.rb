cask 'fenix' do
  version '2.0.0'
  sha256 'f2155a6611c7048f0f3a94c06de6cfa4b2e6e5df05e1d68ed7c9aebf8786c1cf'

  # github.com/coreybutler/fenix was verified as official when first introduced to the cask
  url "https://github.com/coreybutler/fenix/releases/download/v#{version}/fenix-osx-#{version}.zip"
  appcast 'https://github.com/coreybutler/fenix/releases.atom',
          checkpoint: '5ca2a847f17b0b5867f17b03346b0a4db29783d764d3ceaff4da5584f917e5b5'
  name 'Fenix'
  homepage 'https://fenixwebserver.com/'

  app 'Fenix.app'
end
