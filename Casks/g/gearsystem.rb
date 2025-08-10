cask "gearsystem" do
  arch arm: "arm", intel: "intel"

  version "3.8.3"
  sha256 arm:   "de69aea5f64d06064621d98d4f29c2a9de2c258bc8342d689283bb23c884ff3d",
         intel: "763bc9eab374ae6ed40c480fa6ff41a9e83fdd3edea2a59d2192150195548155"

  url "https://github.com/drhelius/Gearsystem/releases/download/#{version}/Gearsystem-#{version}-macos-#{arch}.zip"
  name "Gearsystem"
  desc "Sega Master System, Game Gear and SG-1000 emulator"
  homepage "https://github.com/drhelius/Gearsystem"

  container nested: "Gearsystem.app.zip"

  app "Gearsystem.app"

  zap trash: "~/Library/Saved Application State/me.ignaciosanchez.Gearsystem.savedState"
end
