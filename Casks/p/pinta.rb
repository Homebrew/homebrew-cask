cask "pinta" do
  arch arm: "arm64", intel: "x86_64"

  version "3.0.4"
  sha256 arm:   "162e1a5a874905377a4aaa728d29a11b751237d24230484d1662b7d9c5501d32",
         intel: "461261e1fb96c23a913d57c5e0a18400a6418a6f415209fe6c69c8cb5e0b4464"

  url "https://github.com/PintaProject/Pinta/releases/download/#{version}/Pinta-macos-#{arch}.dmg",
      verified: "github.com/PintaProject/Pinta/"
  name "Pinta"
  desc "Simple Gtk# Paint Program"
  homepage "https://www.pinta-project.com/"

  app "Pinta.app"

  zap trash: [
    "~/Library/Preferences/com.ximian.pinta.plist",
    "~/Library/Saved Application State/com.ximian.pinta.savedState",
  ]
end
