cask "gearsystem" do
  arch arm: "arm64", intel: "intel"

  version "3.9.11"
  sha256 arm:   "13314ea775c2ae26253245f4a231982203ee52f8c9beca92d746c438f1507f1d",
         intel: "68eda4eb69b77175f024d27222e40a9994f51c5d0f114d783405b17467681b02"

  url "https://github.com/drhelius/Gearsystem/releases/download/#{version}/Gearsystem-#{version}-desktop-macos-#{arch}.zip"
  name "Gearsystem"
  desc "Sega Master System, Game Gear and SG-1000 emulator"
  homepage "https://github.com/drhelius/Gearsystem"

  depends_on :macos
  container nested: "Gearsystem.app.zip"

  app "Gearsystem.app"

  zap trash: "~/Library/Saved Application State/me.ignaciosanchez.Gearsystem.savedState"
end
