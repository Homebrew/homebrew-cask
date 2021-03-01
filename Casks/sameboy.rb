cask "sameboy" do
  version "0.14.1"
  sha256 "a99dc57b921bc6ab574d2ec7028dd0d865fc7af791914478d97537f796dae55c"

  url "https://github.com/LIJI32/SameBoy/releases/download/v#{version}/sameboy_cocoa_v#{version}.zip",
      verified: "github.com/LIJI32/SameBoy/"
  appcast "https://github.com/LIJI32/SameBoy/releases.atom"
  name "SameBoy"
  desc "Game Boy and Game Boy Color emulator written in C"
  homepage "https://sameboy.github.io/"

  depends_on macos: ">= :sierra"

  app "SameBoy.app"
end
