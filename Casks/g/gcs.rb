cask "gcs" do
  arch arm: "arm64", intel: "amd64"

  version "5.58.1"
  sha256 arm:   "79781045bb3ae22d63da7f1e75201f7edd3e20be551229c2b05d46f3dfc2e049",
         intel: "1fd05cb7a43c558a06076f3f0fdeea5b8087026c55b5ab4d5d96d10a787f8d8e"

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
