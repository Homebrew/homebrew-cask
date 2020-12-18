cask "stella" do
  version "6.4"
  sha256 "dfd9288cfff0cc152cbc1aaebe36805b0b8ce7d1dd4c3cac9ca1b1f44cc1d540"

  url "https://github.com/stella-emu/stella/releases/download/#{version}/Stella-#{version}-macos.dmg",
      verified: "github.com/stella-emu/stella/"
  appcast "https://github.com/stella-emu/stella/releases.atom"
  name "Stella"
  desc "Multi-platform Atari 2600 Emulator"
  homepage "https://stella-emu.github.io/"

  app "Stella.app"
end
