cask 'syrinscape' do
  version '1.3.7-20180730'
  sha256 'e5f49aae95968689400c72e03156790f8d49b49585979a230de573044fbbcb05'

  url "https://syrinscape.com/get-download/syrinscape-mac-#{version}.dmg"
  name 'Syrinscape Fantasy Player'
  homepage 'https://syrinscape.com/'

  app 'Syrinscape.app'
end
