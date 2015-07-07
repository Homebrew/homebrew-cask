cask :v1 => 'pikopixel' do
  version '1.0b4'
  sha256 'bf024db394bfd6031f02f75313a591f949decea0cad80ec07357c0f32e34fa92'

  url "http://twilightedge.com/downloads/PikoPixel#{version}.dmg"
  name 'PikoPixel'
  homepage 'http://twilightedge.com/mac/pikopixel/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'PikoPixel.app'
end
