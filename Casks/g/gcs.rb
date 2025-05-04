cask "gcs" do
  arch arm: "arm64", intel: "amd64"

  version "5.35.0"
  sha256 arm:   "8a7c907d70b651f5e6360938dbfab1c9e0b19e52229e4c463e21cd12ea3f340a",
         intel: "c9c3bca4d44b9ff0504b22b8ba8d04d73002054759a705b594fe65055879a465"

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
