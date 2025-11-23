cask "gearsystem" do
  arch arm: "arm", intel: "intel"

  version "3.8.5"
  sha256 arm:   "04f87767f09fcfb43119038a59b84c1416c35ed3329eab326ad70c094b9d12ee",
         intel: "a1c64a02c155d11e215d71377f8d92a33985f99207b81b267aecd7ac2d3c9846"

  url "https://github.com/drhelius/Gearsystem/releases/download/#{version}/Gearsystem-#{version}-macos-#{arch}.zip"
  name "Gearsystem"
  desc "Sega Master System, Game Gear and SG-1000 emulator"
  homepage "https://github.com/drhelius/Gearsystem"

  container nested: "Gearsystem.app.zip"

  app "Gearsystem.app"

  zap trash: "~/Library/Saved Application State/me.ignaciosanchez.Gearsystem.savedState"
end
