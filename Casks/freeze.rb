cask 'freeze' do
  version '2.3'
  sha256 '0894bc154c3a0c3a7a3ecffcff6b39da2467ec235b62ca699bd272204a576b49'

  url 'https://freezeapp.net/download/Freeze.zip'
  appcast 'https://freezeapp.net/appcast.xml',
          checkpoint: 'c3d15497fa81a5bc243b9f20fe6bb2151f02ef72a28752bdf06f09b1a2742227'
  name 'Freeze'
  homepage 'https://freezeapp.net/'
  license :freemium

  app 'Freeze.app'
end
