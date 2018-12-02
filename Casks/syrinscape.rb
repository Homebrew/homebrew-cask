cask 'syrinscape' do
  version '1.3.7-20180730'
  sha256 '9f7f441a05578bcfdfd67173c1c9928b60d2d6e2004699ac02e9e182a7df107f'

  url "https://syrinscape.com/get-download/syrinscape-mac-#{version}.dmg"
  name 'Syrinscape Fantasy Player'
  homepage 'https://syrinscape.com/'

  app 'Syrinscape.app'
end
