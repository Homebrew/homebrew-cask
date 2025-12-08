cask "gearsystem" do
  arch arm: "arm", intel: "intel"

  version "3.8.6"
  sha256 arm:   "f85017e23960359a7ac740b3fd1aad1a358c1b34c73c176bb33b1737bb27fd24",
         intel: "a10df0621dc0ce03fffd10c0e84ea07f6c62d4b56cd3af6cce51dec6a2cd6ea9"

  url "https://github.com/drhelius/Gearsystem/releases/download/#{version}/Gearsystem-#{version}-macos-#{arch}.zip"
  name "Gearsystem"
  desc "Sega Master System, Game Gear and SG-1000 emulator"
  homepage "https://github.com/drhelius/Gearsystem"

  container nested: "Gearsystem.app.zip"

  app "Gearsystem.app"

  zap trash: "~/Library/Saved Application State/me.ignaciosanchez.Gearsystem.savedState"
end
