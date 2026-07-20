cask "gearsystem" do
  arch arm: "arm64", intel: "intel"

  version "3.9.13"
  sha256 arm:   "bf03dade4d526787de5b33c76dcbba8796200909a33c21bc0eea2baa279626a6",
         intel: "156b86c7ddeb2d0fad99bb2e6d942b601b75485c340a47294acd256468c0d407"

  url "https://github.com/drhelius/Gearsystem/releases/download/#{version}/Gearsystem-#{version}-desktop-macos-#{arch}.zip"
  name "Gearsystem"
  desc "Sega Master System, Game Gear and SG-1000 emulator"
  homepage "https://github.com/drhelius/Gearsystem"

  depends_on :macos
  container nested: "Gearsystem.app.zip"

  app "Gearsystem.app"

  zap trash: "~/Library/Saved Application State/me.ignaciosanchez.Gearsystem.savedState"
end
