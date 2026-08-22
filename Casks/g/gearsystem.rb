cask "gearsystem" do
  arch arm: "arm64", intel: "intel"

  version "3.9.16"
  sha256 arm:   "e0dfa929580a259a9a6097f0efb88fcad6e30fb0b8c13364f449505e86617781",
         intel: "0e6435deeb3211b382f8565e46ab3373c812d25a88bba0766447c05e90208607"

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
