cask "pinta" do
  version "2.0.2"
  sha256 "2b0a2bf6e0f517c93958b0f80fdbbccd7329e5685b897bc63ba87c9c0dc553b1"

  url "https://github.com/PintaProject/Pinta/releases/download/#{version}/Pinta.dmg",
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
