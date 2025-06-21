cask "gearsystem" do
  arch arm: "arm", intel: "intel"

  version "3.8.1"
  sha256 arm:   "56113a22431608a5afbcb4d00543a6ad501b9b1f500cc6175f7810a13533abf6",
         intel: "8ea0fe8b74cf4cefc110aec73068f90c4cd7a4e0da062c6eed7df057a884692a"

  url "https://github.com/drhelius/Gearsystem/releases/download/#{version}/Gearsystem-#{version}-macos-#{arch}.zip"
  name "Gearsystem"
  desc "Sega Master System, Game Gear and SG-1000 emulator"
  homepage "https://github.com/drhelius/Gearsystem"

  container nested: "Gearsystem.app.zip"

  app "Gearsystem.app"

  zap trash: "~/Library/Saved Application State/me.ignaciosanchez.Gearsystem.savedState"
end
