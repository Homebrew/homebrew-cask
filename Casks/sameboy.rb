cask "sameboy" do
  version "0.13.6"
  sha256 "d55eb020c789d59672f59ab4f75a5ac9beaf1b202d3d70482c926d27673e70e4"

  # github.com/LIJI32/SameBoy/ was verified as official when first introduced to the cask
  url "https://github.com/LIJI32/SameBoy/releases/download/v#{version}/sameboy_cocoa_v#{version}.zip"
  appcast "https://github.com/LIJI32/SameBoy/releases.atom"
  name "SameBoy"
  desc "Game Boy and Game Boy Color emulator written in C"
  homepage "https://sameboy.github.io/"

  depends_on macos: ">= :sierra"

  app "SameBoy.app"
end
