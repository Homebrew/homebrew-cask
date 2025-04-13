cask "pinta" do
  arch arm: "arm64", intel: "x86_64"

  version "3.0"
  sha256 arm:   "48f0e0aae405d102fc62ff0b07f53b09a94a5a20f358cf3e87c96182aa23f13e",
         intel: "36e31e5044941a7d51ce2d0a68b71573b75d0bde534714719b6eb1db2348bc26"

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
