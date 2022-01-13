cask "pinta" do
  version "2.0.1"
  sha256 "118f6fd52270d00de80d7ffaafa0b17d3abfe0c9c370f36db0d1ef75438ce07d"

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
