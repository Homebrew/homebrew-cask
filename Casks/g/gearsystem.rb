cask "gearsystem" do
  arch arm: "arm64", intel: "intel"

  version "3.9.6"
  sha256 arm:   "d25229eb5de8213e6099a9f675653dac97dba63dd67120b9f862bc5875a54ed5",
         intel: "16be86127cb74db80544f05562443280c4daeb16b8e97f84c0c965236fc1d44f"

  url "https://github.com/drhelius/Gearsystem/releases/download/#{version}/Gearsystem-#{version}-desktop-macos-#{arch}.zip"
  name "Gearsystem"
  desc "Sega Master System, Game Gear and SG-1000 emulator"
  homepage "https://github.com/drhelius/Gearsystem"

  depends_on :macos
  container nested: "Gearsystem.app.zip"

  app "Gearsystem.app"

  zap trash: "~/Library/Saved Application State/me.ignaciosanchez.Gearsystem.savedState"
end
