cask 'pikopixel' do
  version '1.0b4'
  sha256 'bf024db394bfd6031f02f75313a591f949decea0cad80ec07357c0f32e34fa92'

  url "http://twilightedge.com/downloads/PikoPixel#{version}.dmg"
  name 'PikoPixel'
  homepage 'http://twilightedge.com/mac/pikopixel/'
  license :gpl

  app 'PikoPixel.app'
end
