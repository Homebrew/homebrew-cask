cask "nightowl" do
  version "0.2.9"
  sha256 "a06f7f47f52e625f5bf41d83e55ad25eedc23ae0fee463a4659521f777debceb"

  url "https://nightowl.kramser.xyz/files/NightOwl.dmg"
  appcast "https://nightowl.kramser.xyz/"
  name "NightOwl"
  desc "Utility to toggle dark mode"
  homepage "https://nightowl.kramser.xyz/"

  depends_on macos: ">= :mojave"

  app "NightOwl.app"
end
