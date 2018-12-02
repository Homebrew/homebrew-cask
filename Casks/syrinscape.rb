cask 'syrinscape' do
  version '1.3.7-20180730'
  sha256 '5c3d784ea12f8137809b88c945f6aa8ac5d5bfe2fb8e1539853259c2c2a0400f'

  url "https://syrinscape.com/get-download/syrinscape-mac-#{version}.dmg"
  name 'Syrinscape Fantasy Player'
  homepage 'https://syrinscape.com/'

  app 'Syrinscape.app'
end
