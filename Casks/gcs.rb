cask "gcs" do
  arch arm: "apple", intel: "intel"

  version "5.2.0"
  sha256 arm:   "78aa94c0d07a0d3b0bfcb8b4d9a4de9acfa4257f64a7ba786257f973b0cb4a52",
         intel: "972e4d0a1b07e6ff4652d998e7e2ee0ee2742e3c13d1b6580aa56052996d2770"

  url "https://github.com/richardwilkes/gcs/releases/download/v#{version}/gcs-#{version}-macos-#{arch}.dmg",
      verified: "github.com/richardwilkes/gcs/"
  name "gcs"
  desc "Character sheet editor for the GURPS Fourth Edition roleplaying game"
  homepage "https://gurpscharactersheet.com/"

  app "GCS.app"

  zap trash: [
    "~/Library/Logs/gcs.log",
    "~/Library/Preferences/com.trollworks.gcs.plist",
    "~/Library/Preferences/gcs.json",
    "~/Library/Saved Application State/com.trollworks.gcs.savedState",
    "~/GCS",
  ]
end
