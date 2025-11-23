cask "gcs" do
  arch arm: "arm64", intel: "amd64"

  version "5.42.0"
  sha256 arm:   "5ef43e48382b77d09c2c99fe9d24bc8720a20a866657872c7e1d5cd551acb585",
         intel: "1d8866f970d5675643931b6523fcc81f3874ed03fafe5ebce83bca3d33307e6d"

  on_arm do
    depends_on macos: ">= :big_sur"
  end
  on_intel do
    depends_on macos: ">= :catalina"
  end

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
