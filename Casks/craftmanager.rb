cask 'craftmanager' do
  version '1.0.59'
  sha256 '7c013b345a1df79243ba1e5efdb7cc79393046eb728ce7b0dbb6c210feb31643'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml',
          checkpoint: '3ec6a511196e4bf6d7d535e46700f3db347380dcda0ee22cc4a2ac9f3f4bfd3b'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
