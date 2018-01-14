cask 'caption' do
  version '2.0.0'
  sha256 '8736b33215a2128a46fe27830e38ca50a525a0916ba64d89826404b96e80712b'

  # github.com/gielcobben/caption was verified as official when first introduced to the cask
  url "https://github.com/gielcobben/caption/releases/download/v#{version}/caption-#{version}-mac.zip"
  appcast 'https://github.com/gielcobben/caption/releases.atom',
          checkpoint: '73cc9869034771e1f9f6a621ad89d8f65fff43b8e33851c22af3c481e4082603'
  name 'Caption'
  homepage 'https://getcaption.co/'

  app 'Caption.app'
end
