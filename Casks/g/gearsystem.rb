cask "gearsystem" do
  arch arm: "arm64", intel: "intel"

  version "3.9.7"
  sha256 arm:   "6b92f2e3fef2a7f5f5bd572d1add133d9bfc2f4fe1b9320c9b3a5e9def67275b",
         intel: "59ab8ecc6c3fb509acdec02989adf84bad50cfaa832499efe0e7fae125c54ae0"

  url "https://github.com/drhelius/Gearsystem/releases/download/#{version}/Gearsystem-#{version}-desktop-macos-#{arch}.zip"
  name "Gearsystem"
  desc "Sega Master System, Game Gear and SG-1000 emulator"
  homepage "https://github.com/drhelius/Gearsystem"

  depends_on :macos
  container nested: "Gearsystem.app.zip"

  app "Gearsystem.app"

  zap trash: "~/Library/Saved Application State/me.ignaciosanchez.Gearsystem.savedState"
end
