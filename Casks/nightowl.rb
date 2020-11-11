cask "nightowl" do
  version "0.3.0"
  sha256 "8b0ff3c73b0beda859550b3569a8a10592548a3723f96bfcf06d928bc169e6e3"

  url "https://nightowl.kramser.xyz/files/NightOwl.dmg"
  appcast "https://nightowl.kramser.xyz/"
  name "NightOwl"
  desc "Utility to toggle dark mode"
  homepage "https://nightowl.kramser.xyz/"

  depends_on macos: ">= :mojave"

  app "NightOwl.app"
end
