cask "gearsystem" do
  arch arm: "arm64", intel: "intel"

  version "3.9.12"
  sha256 arm:   "4a2565c8215816e146963e2ee0c4f546019084e8c7fda95f0c9abba1e60a4466",
         intel: "a97a8ab231b0d2f18d91aaf08ca470a05ea7061f250e57cb95e9c1669ced5c93"

  url "https://github.com/drhelius/Gearsystem/releases/download/#{version}/Gearsystem-#{version}-desktop-macos-#{arch}.zip"
  name "Gearsystem"
  desc "Sega Master System, Game Gear and SG-1000 emulator"
  homepage "https://github.com/drhelius/Gearsystem"

  depends_on :macos
  container nested: "Gearsystem.app.zip"

  app "Gearsystem.app"

  zap trash: "~/Library/Saved Application State/me.ignaciosanchez.Gearsystem.savedState"
end
