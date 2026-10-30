cask "gearsystem" do
  arch arm: "arm64", intel: "intel"

  version "3.9.24"
  sha256 arm:   "3657e70370c1568084ae696b77a44a56e5ffcda8d99c4e4a8637b01e34155794",
         intel: "0a4d5f3d073446f05511c28c690033f94300a89b3afd4315036fcb0c8ea02328"

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
