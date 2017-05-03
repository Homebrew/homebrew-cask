cask 'devrant' do
  version '1.0.3'
  sha256 '9aea3cdd3f6cc89012baa0dfd2f82b213557e0e6d667e6a6cee594f8b3d50740'

  url "https://github.com/Meadowcottage/devRant/releases/download/#{version}/devRant-#{version}.dmg"
  appcast 'https://github.com/Meadowcottage/devRant/releases.atom',
          checkpoint: 'c49529e982d5f6a45e1d4eb5dcd7188afdfef7c726806ec7a300affed92c8bda'
  name 'devrant'
  homepage 'https://github.com/Meadowcottage/devRant'

  app 'devrant.app'
end
