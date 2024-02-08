cask "akiflow" do
  version "2.38.9"
  sha256 "45adb1d9cc84a778705fe5116e6f4d08772c2c42380622246c25c3eb5a5c3947"

  url "https://download.akiflow.com/builds/Akiflow-#{version}-universal.dmg"
  name "Akiflow"
  desc "Time blocking platform to save 2 hours every day"
  homepage "https://akiflow.com/"

  livecheck do
    skip "Constantly changes between download page and direct download"
  end

  depends_on macos: ">= :high_sierra"

  app "Akiflow.app"

  zap trash: [
    "~/Library/Application Support/Akiflow",
    "~/Library/Preferences/Akiflow",
    "~/Library/Preferences/com.akiflow.akiflow.plist",
    "~/Library/Saved Application State/com.akiflow.akiflow.savedState",
  ]
end
