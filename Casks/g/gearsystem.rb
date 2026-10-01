cask "gearsystem" do
  arch arm: "arm64", intel: "intel"

  version "3.9.20"
  sha256 arm:   "b18ed36119b2306c4899619ec109bae3b0e36265a5e3726d30f43a7bab721531",
         intel: "506e78f3e4cc90b89adac0969d401f0b55a1c0d57ee21c4d29f29277156b7013"

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
