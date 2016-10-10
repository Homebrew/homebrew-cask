cask 'pikopixel' do
  version '1.0b5'
  sha256 '939c1ca666a0fa442e0f378e8bfe2f7b1946468b113bfef183d04b730fedf84f'

  url "http://twilightedge.com/downloads/PikoPixel#{version}.dmg",
      user_agent: :fake
  name 'PikoPixel'
  homepage 'http://twilightedge.com/mac/pikopixel/'

  app 'PikoPixel.app'
end
