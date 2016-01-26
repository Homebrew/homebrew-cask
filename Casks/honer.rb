cask 'honer' do
  version '1.0'
  sha256 'bae10bea6875dbc5c948fb2e86b168c15ee3738d485bd7ab2a9758e64812c531'

  url "https://github.com/puffnfresh/Honer.app/releases/download/v#{version}/Honer-6e3863f2.zip"
  appcast 'https://github.com/puffnfresh/Honer.app/releases.atom',
          checkpoint: 'aaa12bc1107d3de9d0152ddfeb3f1a69427f394ca3254db9e04535d5f52f86be'
  name 'Honer'
  homepage 'https://github.com/puffnfresh/Honer.app'
  license :mit

  app 'Honer.app'
end
