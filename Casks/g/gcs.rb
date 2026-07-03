cask "gcs" do
  arch arm: "arm64", intel: "amd64"

  version "5.43.0"
  sha256 arm:   "5bcf91cf1053134874b5ebace12b6644a4ea7ebfa463d458219d8c13553e5a84",
         intel: "5cb8f378fbfa4dc660fd4d54e6d448651f0d884397f78b459aee8a29fd684feb"

  on_arm do
    depends_on macos: :big_sur
  end
  on_intel do
    depends_on macos: :catalina
  end

  url "https://github.com/richardwilkes/gcs/releases/download/v#{version}/gcs-#{version}-macos-#{arch}.dmg",
      verified: "github.com/richardwilkes/gcs/"
  name "gcs"
  desc "Character sheet editor for the GURPS Fourth Edition roleplaying game"
  homepage "https://gurpscharactersheet.com/"

  depends_on :macos

  app "GCS.app"

  zap trash: [
    "~/GCS",
    "~/Library/Logs/gcs.log",
    "~/Library/Preferences/com.trollworks.gcs.plist",
    "~/Library/Preferences/gcs.json",
    "~/Library/Saved Application State/com.trollworks.gcs.savedState",
  ]
end
