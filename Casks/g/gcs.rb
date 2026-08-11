cask "gcs" do
  arch arm: "arm64", intel: "amd64"

  version "5.45.1"
  sha256 arm:   "869b9bc2886276857e3804572c2c7ce66edc5f1d470957d93425e63e40673063",
         intel: "634ff27f9be943520c22f23487952dcae449b2394eff5faf9b780c325524aea2"

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
