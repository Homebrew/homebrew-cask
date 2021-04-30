cask "stella" do
  version "6.5.3"
  sha256 "e39779ca6c8beeae57205c8d2a8e439b64138268de90782407a506408a58f7a1"

  url "https://github.com/stella-emu/stella/releases/download/#{version}/Stella-#{version}-macos.dmg",
      verified: "github.com/stella-emu/stella/"
  name "Stella"
  desc "Multi-platform Atari 2600 Emulator"
  homepage "https://stella-emu.github.io/"

  app "Stella.app"
end
