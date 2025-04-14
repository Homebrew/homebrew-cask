cask "gearsystem" do
  arch arm: "arm", intel: "intel"

  version "3.8.0"
  sha256 arm:   "58250cf738d15cd379d9c036a6e58a6e9139adc58a2530012236f7466623d33e",
         intel: "8797a52d12fa845ba1a62337f1cac2cbb258e318f8ac9fc0c65248bba90a1a77"

  url "https://github.com/drhelius/Gearsystem/releases/download/#{version}/Gearsystem-#{version}-macos-#{arch}.zip"
  name "Gearsystem"
  desc "Sega Master System, Game Gear and SG-1000 emulator"
  homepage "https://github.com/drhelius/Gearsystem"

  container nested: "Gearsystem.app.zip"

  app "Gearsystem.app"

  zap trash: "~/Library/Saved Application State/me.ignaciosanchez.Gearsystem.savedState"
end
