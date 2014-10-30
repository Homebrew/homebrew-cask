class Stackroom < Cask
  version '2.0b'
  sha256 'b5904f8c39a3941a827cea31e77dc9c62b12025cccddc5b42869615392a543ce'

  url "http://www.geocities.jp/aromaticssoft/stackroom/download/stackroom_#{version}.zip"
  homepage 'http://www.geocities.jp/aromaticssoft/stackroom/index.html'
  license :unknown

  app 'Stackroom.app'
end
