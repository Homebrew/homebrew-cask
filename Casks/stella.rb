cask "stella" do
  version "6.5"
  sha256 "d22e36a0a4c4f9ae835070bfd2dbf5c9fb222c32ea45cf0b146d88a15d875fa0"

  url "https://github.com/stella-emu/stella/releases/download/#{version}/Stella-#{version}-macos.dmg",
      verified: "github.com/stella-emu/stella/"
  appcast "https://github.com/stella-emu/stella/releases.atom"
  name "Stella"
  desc "Multi-platform Atari 2600 Emulator"
  homepage "https://stella-emu.github.io/"

  app "Stella.app"
end
