cask "stella" do
  version "6.5.2"
  sha256 "793b183578f31bba7e718dcacfda248eb4666ea6cd8da74c220a2b9951aa2847"

  url "https://github.com/stella-emu/stella/releases/download/#{version}/Stella-#{version}-macos.dmg",
      verified: "github.com/stella-emu/stella/"
  appcast "https://github.com/stella-emu/stella/releases.atom"
  name "Stella"
  desc "Multi-platform Atari 2600 Emulator"
  homepage "https://stella-emu.github.io/"

  app "Stella.app"
end
