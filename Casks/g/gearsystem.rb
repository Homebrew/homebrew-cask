cask "gearsystem" do
  arch arm: "arm64", intel: "intel"

  version "3.9.14"
  sha256 arm:   "69f3c8395bf744a217cf168e53ef278a5dbbf18f45382f8a9f04672f6c6281e5",
         intel: "a9286f924397f1a012219b4a3bbde015525c5ea878f8a1a05a9b2269820394a7"

  url "https://github.com/drhelius/Gearsystem/releases/download/#{version}/Gearsystem-#{version}-desktop-macos-#{arch}.zip"
  name "Gearsystem"
  desc "Sega Master System, Game Gear and SG-1000 emulator"
  homepage "https://github.com/drhelius/Gearsystem"

  depends_on :macos
  container nested: "Gearsystem.app.zip"

  app "Gearsystem.app"

  zap trash: "~/Library/Saved Application State/me.ignaciosanchez.Gearsystem.savedState"
end
