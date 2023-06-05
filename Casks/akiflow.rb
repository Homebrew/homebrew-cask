cask "akiflow" do
  version "2.31.11"
  sha256 "204cf93650a803262c1ccd8c6ded2f40fc91f786d649234d4e0dff3bb046d0be"

  url "https://akiflow.com/releases/Akiflow-#{version}-universal.dmg"
  name "Akiflow"
  desc "Time blocking platform to save 2 hours every day"
  homepage "https://akiflow.com/"

  livecheck do
    skip "Constantly changes between download page and direct download"
  end

  app "Akiflow.app"

  zap trash: [
    "~/Library/Application Support/Akiflow",
    "~/Library/Preferences/Akiflow",
    "~/Library/Preferences/com.akiflow.akiflow.plist",
    "~/Library/Saved Application State/com.akiflow.akiflow.savedState",
  ]
end
