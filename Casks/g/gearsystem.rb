cask "gearsystem" do
  arch arm: "arm64", intel: "intel"

  version "3.9.15"
  sha256 arm:   "2d7dbdfc7e940679a9e968c3eac66275902fe859c0a25b416e5011e3e80cf536",
         intel: "02bed91c852b7d04e56a534b4d150d6ced020e503d6401970bff95a20f92c102"

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
