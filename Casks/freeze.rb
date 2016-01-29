cask 'freeze' do
  version '1.4'
  sha256 '02e0cd0c2e992062e146e532def41b62078c5bfd7fb77d6558f0bd0bb9dc7f54'

  url 'https://freezeapp.net/download/Freeze.zip'
  appcast 'https://freezeapp.net/appcast.xml',
          checkpoint: 'f3737884c6d7b8741594d64ca475c3d660a5fe867ed038e5e351e603d418d1d4'
  name 'Freeze'
  homepage 'https://freezeapp.net/'
  license :freemium

  app 'Freeze.app'
end
