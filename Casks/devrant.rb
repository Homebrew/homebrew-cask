cask 'devrant' do
  version '1.0.3'
  sha256 '9aea3cdd3f6cc89012baa0dfd2f82b213557e0e6d667e6a6cee594f8b3d50740'

  url "https://github.com/NuroDev/devRant/releases/download/#{version}/devRant-#{version}.dmg"
  appcast 'https://github.com/NuroDev/devRant/releases.atom',
          checkpoint: '8e6281dfc3871de661518aeac120d52d5e43f7759e03024a4ef1fcfc38df1aac'
  name 'devrant'
  homepage 'https://github.com/NuroDev/devRant'

  app 'devrant.app'

  caveats do
    discontinued
  end
end
