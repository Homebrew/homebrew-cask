cask "akiflow" do
  version "2.28.11"
  sha256 "2d22398a44fe581f7177707df319d3ba35e1b805b4a9206b958f6583c86f8717"

  url "https://akiflow.com/releases/Akiflow-#{version}-universal.dmg"
  name "Akiflow"
  desc "Time blocking platform to save 2 hours every day"
  homepage "https://akiflow.com/"

  livecheck do
    url "https://akiflow.com/releases/download"
    strategy :header_match
  end

  app "Akiflow.app"

  zap trash: [
    "~/Library/Application Support/Akiflow",
    "~/Library/Preferences/Akiflow",
    "~/Library/Preferences/com.akiflow.akiflow.plist",
    "~/Library/Saved Application State/com.akiflow.akiflow.savedState",
  ]
end
