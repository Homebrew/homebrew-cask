cask "gearsystem" do
  arch arm: "arm", intel: "intel"

  version "3.7.1"
  sha256 arm:   "d4b11b7eb1063e4c165870ac1d328e00ebea6e8af1ea0e6e6f16eaafed031d48",
         intel: "096c872649878d0cd70fb341c9073c05961d66c8c00c2934c2d6f4f1d70b921d"

  url "https://github.com/drhelius/Gearsystem/releases/download/#{version}/Gearsystem-#{version}-macos-#{arch}.zip"
  name "Gearsystem"
  desc "Sega Master System, Game Gear and SG-1000 emulator"
  homepage "https://github.com/drhelius/Gearsystem"

  container nested: "Gearsystem.app.zip"

  app "Gearsystem.app"

  zap trash: "~/Library/Saved Application State/me.ignaciosanchez.Gearsystem.savedState"
end
