cask "gcs" do
  arch arm: "arm64", intel: "amd64"

  version "5.53.0"
  sha256 arm:   "417c56d03619d7c35855609f97b04ad887f2aef731221471f82a450c30212589",
         intel: "b9b595bc77cb1054d39b53ee7c19b53fa6e18d1dc6f69361826fc74240dc4694"

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
