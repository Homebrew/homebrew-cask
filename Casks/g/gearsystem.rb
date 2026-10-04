cask "gearsystem" do
  arch arm: "arm64", intel: "intel"

  version "3.9.21"
  sha256 arm:   "6e506e24e6031fa885b1ee1decccbbe7df32acc078506072284da06f7b8ee690",
         intel: "b1411b9abc2aae3f48a6534b02330221082f50474b23fbc942a6eaac5610bc75"

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
