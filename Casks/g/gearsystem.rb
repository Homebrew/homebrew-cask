cask "gearsystem" do
  arch arm: "arm", intel: "intel"

  version "3.7.0"
  sha256 arm:   "23551b9fc497daf33c6259a573ea6690e89b0c718cff18cc58fdae4514a01b23",
         intel: "0e52715e79f1501504316d8fc865c5d22e74051b5b449a4a0e388d107f001915"

  url "https://github.com/drhelius/Gearsystem/releases/download/#{version}/Gearsystem-#{version}-macos-#{arch}.zip"
  name "Gearsystem"
  desc "Sega Master System, Game Gear and SG-1000 emulator"
  homepage "https://github.com/drhelius/Gearsystem"

  container nested: "Gearsystem.app.zip"

  app "Gearsystem.app"

  zap trash: "~/Library/Saved Application State/me.ignaciosanchez.Gearsystem.savedState"
end
