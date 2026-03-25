cask "gearsystem" do
  arch arm: "arm64", intel: "intel"

  version "3.9.2"
  sha256 arm:   "ad5836b0b42d47b03475c90ba742b68de502567fcdb5e42453d7297adc505280",
         intel: "0e71100bc35f22d2aa21887e16279d253062c4e0afc91df6832120fedac350a3"

  url "https://github.com/drhelius/Gearsystem/releases/download/#{version}/Gearsystem-#{version}-desktop-macos-#{arch}.zip"
  name "Gearsystem"
  desc "Sega Master System, Game Gear and SG-1000 emulator"
  homepage "https://github.com/drhelius/Gearsystem"

  container nested: "Gearsystem.app.zip"

  app "Gearsystem.app"

  zap trash: "~/Library/Saved Application State/me.ignaciosanchez.Gearsystem.savedState"
end
