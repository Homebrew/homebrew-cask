cask 'devrant' do
  version '1.0.3'
  sha256 '9aea3cdd3f6cc89012baa0dfd2f82b213557e0e6d667e6a6cee594f8b3d50740'

  url "https://github.com/Meadowcottage/devRant/releases/download/#{version}/devRant-#{version}.dmg"
  appcast 'https://github.com/Meadowcottage/devRant/releases.atom',
          checkpoint: '54943700e5e9c020a0e64c9a8eea7143d35f91b1840e8452d19a0527f72d33eb'
  name 'devrant'
  homepage 'https://github.com/Meadowcottage/devRant'

  app 'devrant.app'
end
