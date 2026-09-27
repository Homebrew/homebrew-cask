cask "gearsystem" do
  arch arm: "arm64", intel: "intel"

  version "3.9.19"
  sha256 arm:   "7c7b6d8d158d4be93c4162d6ccde0de6b9b1df17d4d16c32c9f2c79bf794e428",
         intel: "16e5bb75c2b74a945b8ed46184c93a58a487c611c479580053dbde4853f06586"

  url "https://github.com/drhelius/Gearsystem/releases/download/#{version}/Gearsystem-#{version}-desktop-macos-#{arch}.zip"
  name "Gearsystem"
  desc "Sega Master System, Game Gear and SG-1000 emulator"
  homepage "https://github.com/drhelius/Gearsystem"

  depends_on :macos
  container nested: "Gearsystem.app.zip"

  app "Gearsystem.app"

  uninstall quit: "com.drhelius.Gearsystem"

  zap trash: "~/Library/Saved Application State/me.ignaciosanchez.Gearsystem.savedState"
end
