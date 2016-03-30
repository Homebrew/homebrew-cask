cask 'plug' do
  version '2.0.8'
  sha256 '1f1e954e4b11dcdc8bda2e36a4996b17d47f9d70f8a94a9253c4de4355c34843'

  url 'https://www.plugformac.com/updates/plug2/Plug-latest.dmg'
  appcast 'https://www.plugformac.com/updates/plug2/sparklecast.xml',
          checkpoint: '043da4a5ff0038a6080ce16676ad48334b7afba1451463aca2d270938b3f6595'
  name 'Plug'
  homepage 'https://www.plugformac.com/'
  license :gratis

  app 'Plug.app'
end
