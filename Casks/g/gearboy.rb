cask "gearboy" do
  arch arm: "arm", intel: "intel"

  version "3.7.2"
  sha256 arm:   "040cc8cd8a46e012ddbbf62e00443016eb769dc40de3b2a15cffeac86c882ec5",
         intel: "9002a63b1238b43b05b1038dcd20926f102be67d400798ff67724c567f1720a3"

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
