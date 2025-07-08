cask "gearsystem" do
  arch arm: "arm", intel: "intel"

  version "3.8.2"
  sha256 arm:   "7f2d9e81d038cf8d98c804031b6e6b3d4c3ef3e6f3927a6130b781e083e769c0",
         intel: "1655e543bd6df55acbe598e38cc08413c4e8efccc277c2bf4fae2205d0ab9e49"

  url "https://github.com/drhelius/Gearsystem/releases/download/#{version}/Gearsystem-#{version}-macos-#{arch}.zip"
  name "Gearsystem"
  desc "Sega Master System, Game Gear and SG-1000 emulator"
  homepage "https://github.com/drhelius/Gearsystem"

  container nested: "Gearsystem.app.zip"

  app "Gearsystem.app"

  zap trash: "~/Library/Saved Application State/me.ignaciosanchez.Gearsystem.savedState"
end
