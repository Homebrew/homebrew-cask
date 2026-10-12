cask "gearsystem" do
  arch arm: "arm64", intel: "intel"

  version "3.9.22"
  sha256 arm:   "48365968ace4f768ddd4476688d010bb0aa2b19ee00c8ba3689b39b2821aeeea",
         intel: "d2fdcc53446b0d67c5457324cf37888e0493e0caa268bb06dc4819d9a3a7fae1"

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
