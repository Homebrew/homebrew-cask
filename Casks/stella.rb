cask "stella" do
  version "6.6"
  sha256 "ea35e42abefdda9742a4f2f42cf2c8411e1ee84c7046c03db2f3bc830ec32f60"

  url "https://github.com/stella-emu/stella/releases/download/#{version}/Stella-#{version}-macos.dmg",
      verified: "github.com/stella-emu/stella/"
  name "Stella"
  desc "Multi-platform Atari 2600 Emulator"
  homepage "https://stella-emu.github.io/"

  app "Stella.app"
end
