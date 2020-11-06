cask "snes9x" do
  version "1.60"
  sha256 "99f843f84533a0a8e2aefe0b4f248f47649e06ff58ea2d0c041ff931ee503884"

  # s9x-w32.de/ was verified as official when first introduced to the cask
  url "http://www.s9x-w32.de/dl/snes9x-#{version}-macosx-i386.zip"
  appcast "http://www.s9x-w32.de/dl/"
  name "Snes9x"
  homepage "https://www.snes9x.com/"

  app "snes9x-#{version}-macosx-i386/Snes9x.app"
end
