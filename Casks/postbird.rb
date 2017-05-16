cask 'postbird' do
  version '0.6.2'
  sha256 'a6ffb7b8aeef43a96c920c829f810001686946e144e50ede856f7091b90361c0'

  url "https://github.com/Paxa/postbird/releases/download/#{version}/Postbird-#{version}.dmg"
  appcast 'https://github.com/Paxa/postbird/releases.atom',
          checkpoint: '0c830468537007820e3caa4c9e22f12ae8db7f4528dbb91b1460e5b3e1840621'
  name 'Postbird'
  homepage 'https://github.com/Paxa/postbird'

  app 'Postbird.app'
end
