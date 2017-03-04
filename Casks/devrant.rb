cask 'devrant' do
  version '1.0.3'
  sha256 '9aea3cdd3f6cc89012baa0dfd2f82b213557e0e6d667e6a6cee594f8b3d50740'

  url "https://github.com/Meadowcottage/devRant/releases/download/#{version}/devRant-#{version}.dmg"
  appcast 'https://github.com/Meadowcottage/devRant/releases.atom',
          checkpoint: '7c6f89d3f2263ed0f01e1b0a171e8649c00b01608921f71204c2b9aba6b6338a'
  name 'devrant'
  homepage 'https://github.com/Meadowcottage/devRant'

  app 'devrant.app'
end
