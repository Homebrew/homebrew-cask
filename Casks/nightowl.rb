cask "nightowl" do
  version "0.3.0,13"
  sha256 :no_check

  url "https://nightowl.kramser.xyz/files/NightOwl.dmg"
  appcast "https://nightowl.kramser.xyz/"
  name "NightOwl"
  desc "Utility to toggle dark mode"
  homepage "https://nightowl.kramser.xyz/"

  depends_on macos: ">= :mojave"

  app "NightOwl.app"
end
