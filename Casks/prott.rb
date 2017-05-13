cask 'prott' do
  version '1.0.3'
  sha256 '874cef4081941e0bfa52ddeb5c199b432e838fe017d22b891d38ec5a5196933b'

  url 'https://dl.prottapp.com/apps/prott.dmg'
  appcast 'https://dl.prottapp.com/apps/appcast.xml',
          checkpoint: '48798baddf5d9dc4179cc24c6a32678fff443141155791b66ce91c6e6076d08c'
  name 'Prott'
  homepage 'https://prottapp.com/'

  app 'Prott.app'
end
