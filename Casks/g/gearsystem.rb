cask "gearsystem" do
  arch arm: "arm64", intel: "intel"

  version "3.9.25"
  sha256 arm:   "cc71762746fc1aadb92921539ec7220171dbd69eee93e29150c9fa1360d72931",
         intel: "b514a2a06bdcadedcc4368976fb17faee1b9ba9d178314f5e69e9c724ce1fad1"

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
