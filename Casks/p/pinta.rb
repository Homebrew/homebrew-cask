cask "pinta" do
  arch arm: "arm64", intel: "x86_64"

  version "3.0.3"
  sha256 arm:   "2aa1c525e0e10dbd507a62f1f69e9c3f9b5c727a27f3d8454edb731ae787b34d",
         intel: "e26690f50f47e819c53b275f91849a05d88f2cf82d70818e7b24886de77acb40"

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
