cask "gcs" do
  arch arm: "arm64", intel: "amd64"

  version "5.54.1"
  sha256 arm:   "95282061e4699788eb44a3f5a0dcaae5c19d4d01b8e42850258dd6497cf90589",
         intel: "bb2d6aa53f8c1d8f61c8698707c43a49a7100d42c6b8a8b140da09195835a06e"

  url "https://github.com/richardwilkes/gcs/releases/download/v#{version}/gcs-#{version}-macos-#{arch}.dmg"
  name "gcs"
  desc "Character sheet editor for the GURPS Fourth Edition roleplaying game"
  homepage "https://gurpscharactersheet.com/"

  depends_on :macos

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
