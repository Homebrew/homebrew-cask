cask "gearboy" do
  arch arm: "arm", intel: "intel"

  version "3.7.3"
  sha256 arm:   "d0a03662570bce09ca9674c58e77adb68f1248c3cd30d5cc1bcfea6144d29635",
         intel: "a8f10642fcc1efd4eac6ea25a9a9954f0ba0ef1a6ef429b188336d70d116d892"

  url "https://github.com/drhelius/Gearboy/releases/download/#{version}/Gearboy-#{version}-macos-#{arch}.zip"
  name "Gearboy"
  desc "Game Boy and Game Boy Color emulator"
  homepage "https://github.com/drhelius/Gearboy"

  livecheck do
    url :url
    strategy :github_latest
  end

  container nested: "Gearboy.app.zip"

  app "Gearboy.app"

  zap trash: "~/Library/Saved Application State/me.ignaciosanchez.Gearboy.savedState"
end
