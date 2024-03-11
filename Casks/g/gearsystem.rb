cask "gearsystem" do
  arch arm: "arm", intel: "intel"

  version "3.5.0"
  sha256 arm:   "9ec8565059b7804eabea720ed96187d8493b7f1818543b84667fe7dc1a648c81",
         intel: "3c3c8da07289a7db03a3662891b1abbe7a7a862fdd61ba08df51546830ba889d"

  url "https://github.com/drhelius/Gearsystem/releases/download/#{version}/Gearsystem-#{version}-macos-#{arch}.zip"
  name "Gearsystem"
  desc "Sega Master System, Game Gear and SG-1000 emulator"
  homepage "https://github.com/drhelius/Gearsystem"

  app "Gearsystem.app"

  zap trash: "~/Library/Saved Application State/me.ignaciosanchez.Gearsystem.savedState"
end
