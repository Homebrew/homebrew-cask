cask "gcs" do
  arch arm: "apple", intel: "intel"

  version "5.14.0"
  sha256 arm:   "c347ce1d77fa23a9b97d2878d4fa6562c36cea049fa292711bfd888290665730",
         intel: "69d1c3af38d645a251ae242b2db7e91384321f350838c8ee4fe82ce285ed48f5"

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
