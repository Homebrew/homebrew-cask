cask "gearsystem" do
  arch arm: "arm", intel: "intel"

  version "3.8.4"
  sha256 arm:   "75886881e369c2b1a95782b1957106fff639f8705e27d06627250d3fee1ada04",
         intel: "bfe62acc85b750956440ef0eac67c817d9f3088820cd22c2fe383917104907ec"

  url "https://github.com/drhelius/Gearsystem/releases/download/#{version}/Gearsystem-#{version}-macos-#{arch}.zip"
  name "Gearsystem"
  desc "Sega Master System, Game Gear and SG-1000 emulator"
  homepage "https://github.com/drhelius/Gearsystem"

  container nested: "Gearsystem.app.zip"

  app "Gearsystem.app"

  zap trash: "~/Library/Saved Application State/me.ignaciosanchez.Gearsystem.savedState"
end
