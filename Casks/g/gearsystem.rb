cask "gearsystem" do
  arch arm: "arm64", intel: "intel"

  version "3.9.8"
  sha256 arm:   "01aa5edd15250c2d287d36c2a92cc9b7927fc928182f8a339ed8f20db0d5fee4",
         intel: "9daa49883aeb6b2b5a6468eacdd012d1b842b2b63cc43530beba662b7d687da3"

  url "https://github.com/drhelius/Gearsystem/releases/download/#{version}/Gearsystem-#{version}-desktop-macos-#{arch}.zip"
  name "Gearsystem"
  desc "Sega Master System, Game Gear and SG-1000 emulator"
  homepage "https://github.com/drhelius/Gearsystem"

  depends_on :macos
  container nested: "Gearsystem.app.zip"

  app "Gearsystem.app"

  zap trash: "~/Library/Saved Application State/me.ignaciosanchez.Gearsystem.savedState"
end
