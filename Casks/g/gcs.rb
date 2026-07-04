cask "gcs" do
  arch arm: "arm64", intel: "amd64"

  version "5.44.0"
  sha256 arm:   "2732282202e0da1d54c85fe504fece3974bbf8e1095210b3a8bd8c9637874233",
         intel: "cd7c1d4c5a7265e073c9ac729fb24357b9cf3f2537ca0286b884b34e6b62ae6b"

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
