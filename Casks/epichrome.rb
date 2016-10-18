cask 'epichrome' do
  version '2.1.13'
  sha256 '60b4b207469e1f461e4979ce9c4e8ebe82d9e48813b4737484c932ade1e95812'

  url "https://github.com/dmarmor/epichrome/releases/download/v#{version}/epichrome-#{version}.dmg"
  appcast 'https://github.com/dmarmor/epichrome/releases.atom',
          checkpoint: '88fc19f8e6dcfcf25c8831b7df98ce8c820b9fdc2bd621096527044b8198d4cb'
  name 'Epichrome'
  homepage 'https://github.com/dmarmor/epichrome'

  app 'Epichrome.app'
end
