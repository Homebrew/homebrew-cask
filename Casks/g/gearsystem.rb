cask "gearsystem" do
  arch arm: "arm64", intel: "intel"

  version "3.9.23"
  sha256 arm:   "3f0344f5096b5e1ed69aa6c1b1dada623f33e0af49a83921db212ffa620dd93b",
         intel: "8d99850807a58a222b252718e58cec8f796dd91138164bf95f7968e33f00e467"

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
