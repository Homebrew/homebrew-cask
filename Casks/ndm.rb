cask 'ndm' do
  version '0.1.3'
  sha256 'bd066e0b833c99fd85562a1088144e0b68dbc7dedfe548d0510156397e91178b'

  # github.com/720kb/ndm was verified as official when first introduced to the cask
  url "https://github.com/720kb/ndm/releases/download/v#{version}/ndm-#{version}.dmg"
  appcast 'https://github.com/720kb/ndm/releases.atom',
          checkpoint: '8a9ada6dd79cf6e995a79295bfa4fb3580052a78e0e4df1f2c505abe2fb204ab'
  name 'ndm'
  homepage 'https://720kb.github.io/ndm/'

  app 'ndm.app'
end
