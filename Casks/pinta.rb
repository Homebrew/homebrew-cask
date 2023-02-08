cask "pinta" do
  version "2.1"
  sha256 "f48240ef6440e1740b54892bfbd4bb82b5bf745391852362932ba83add9dff08"

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
