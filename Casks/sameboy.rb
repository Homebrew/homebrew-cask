cask "sameboy" do
  version "0.14"
  sha256 "9b48473b5fd81f65cae401dafc03bdc1ecdc65328fdbc86ddd9e1191516c3cb9"

  url "https://github.com/LIJI32/SameBoy/releases/download/v#{version}/sameboy_cocoa_v#{version}.zip",
      verified: "github.com/LIJI32/SameBoy/"
  appcast "https://github.com/LIJI32/SameBoy/releases.atom"
  name "SameBoy"
  desc "Game Boy and Game Boy Color emulator written in C"
  homepage "https://sameboy.github.io/"

  depends_on macos: ">= :sierra"

  app "SameBoy.app"
end
