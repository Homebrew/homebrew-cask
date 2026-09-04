cask "gcs" do
  arch arm: "arm64", intel: "amd64"

  version "5.50.0"
  sha256 arm:   "d5125098c05656059bad4a78a1334bae32b92fffa05467cc1c65cbf60262d81e",
         intel: "b08096b5af22aa69d6d252020d801ad520676502f2ba52bbc2067ad59ca552d1"

  url "https://github.com/richardwilkes/gcs/releases/download/v#{version}/gcs-#{version}-macos-#{arch}.dmg"
  name "gcs"
  desc "Character sheet editor for the GURPS Fourth Edition roleplaying game"
  homepage "https://gurpscharactersheet.com/"

  depends_on macos: :big_sur

  app "GCS.app"

  zap trash: [
    "~/GCS",
    "~/Library/Application Support/com.trollworks.gcs",
    "~/Library/Logs/com.trollworks.gcs",
    "~/Library/Logs/gcs.log",
    "~/Library/Preferences/com.trollworks.gcs.plist",
    "~/Library/Preferences/gcs.json",
    "~/Library/Saved Application State/com.trollworks.gcs.savedState",
  ]
end
