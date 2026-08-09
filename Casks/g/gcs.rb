cask "gcs" do
  arch arm: "arm64", intel: "amd64"

  version "5.45.0"
  sha256 arm:   "1d369c91a3865f8ddc5b71a8069f4471930704c4294b0b80f09e4a27d78b9646",
         intel: "c8e249d44426378d768c4292b61c29fd5bfb17519d042a28ca1c3f3924e9e017"

  url "https://github.com/richardwilkes/gcs/releases/download/v#{version}/gcs-#{version}-macos-#{arch}.dmg",
      verified: "github.com/richardwilkes/gcs/"
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
