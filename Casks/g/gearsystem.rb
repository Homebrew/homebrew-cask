cask "gearsystem" do
  arch arm: "arm64", intel: "intel"

  version "3.9.0"
  sha256 arm:   "412467a0c80219861ae66aea5642ab5e6a7135c3a882bd30a1e402fd81605ada",
         intel: "c9f54ed5d89108a0bfebdd0ee44a4c9eab157d44f2750a4b3bf86968951dcd5d"

  url "https://github.com/drhelius/Gearsystem/releases/download/#{version}/Gearsystem-#{version}-desktop-macos-#{arch}.zip"
  name "Gearsystem"
  desc "Sega Master System, Game Gear and SG-1000 emulator"
  homepage "https://github.com/drhelius/Gearsystem"

  container nested: "Gearsystem.app.zip"

  app "Gearsystem.app"

  zap trash: "~/Library/Saved Application State/me.ignaciosanchez.Gearsystem.savedState"
end
