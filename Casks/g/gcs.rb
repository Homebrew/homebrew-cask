cask "gcs" do
  arch arm: "arm64", intel: "amd64"

  version "5.41.1"
  sha256 arm:   "29a94a2238e187de7f5ffff3d2af6048a339a6ba1bb973c308ef52e827bfaf93",
         intel: "a988c88872a39db444de7676b827e1b5e520942abaa1b44d16496974d68143b9"

  url "https://github.com/richardwilkes/gcs/releases/download/v#{version}/gcs-#{version}-macos-#{arch}.dmg",
      verified: "github.com/richardwilkes/gcs/"
  name "gcs"
  desc "Character sheet editor for the GURPS Fourth Edition roleplaying game"
  homepage "https://gurpscharactersheet.com/"

  app "GCS.app"

  zap trash: [
    "~/GCS",
    "~/Library/Logs/gcs.log",
    "~/Library/Preferences/com.trollworks.gcs.plist",
    "~/Library/Preferences/gcs.json",
    "~/Library/Saved Application State/com.trollworks.gcs.savedState",
  ]
end
