cask 'epichrome' do
  version '2.1.7'
  sha256 '29114049f8ec080e0d01dc761df17a9b396f7371888ef3adab441a99dd1142e7'

  url "https://github.com/dmarmor/epichrome/releases/download/v#{version}/epichrome-#{version}.dmg"
  appcast 'https://github.com/dmarmor/epichrome/releases.atom',
          checkpoint: '3ef839a6c1236a50f53c6c28f487a7bb053790d0a97bbdbc08ec1f9a528511e9'
  name 'Epichrome'
  homepage 'https://github.com/dmarmor/epichrome'
  license :gpl

  app 'Epichrome.app'
end
