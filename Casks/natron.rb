cask 'natron' do
  version '2.1.9'
  sha256 '87c7644f8cf7da09176e30c558ed0ff76a3c16d558b3e5ae97afe39f0bf6cd32'

  url "https://downloads.natron.fr/Mac/releases/Natron-#{version}.dmg",
      referer: 'https://natron.fr/download/?os=Mac'
  appcast 'https://github.com/MrKepzie/Natron/releases.atom',
          checkpoint: 'e6360a6bff9a337e98fcf2cdc5b30bc1cc8dfc2c61edbd56ab2c6edee2acb689'
  name 'Natron'
  homepage 'https://natron.fr/'

  app 'Natron.app'
end
