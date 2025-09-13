cask "gcs" do
  arch arm: "arm64", intel: "amd64"

  version "5.39.0"
  sha256 arm:   "396f948fe7da6a72a0adba3ec0a24398dc8aa90888fdebf0a08bb96f62e74cfb",
         intel: "a4a0235c28b25def87e66b0289b4df9d7236c3bee87af3836e8e113660c643e4"

  url "https://github.com/richardwilkes/gcs/releases/download/v#{version}/gcs-#{version}-macos-#{arch}.dmg",
      verified: "github.com/richardwilkes/gcs/"
  name "gcs"
  desc "Character sheet editor for the GURPS Fourth Edition roleplaying game"
  homepage "https://gurpscharactersheet.com/"

  depends_on macos: ">= :mojave"

  app "GCS.app"

  zap trash: [
    "~/GCS",
    "~/Library/Logs/gcs.log",
    "~/Library/Preferences/com.trollworks.gcs.plist",
    "~/Library/Preferences/gcs.json",
    "~/Library/Saved Application State/com.trollworks.gcs.savedState",
  ]
end
