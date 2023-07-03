cask "akiflow" do
  version "2.36.9"
  sha256 "f0b70f3b2dd79237a90e2ee47443cf2ab9f52a90cf9253d08368a27116b0dbc3"

  url "https://download.akiflow.com/builds/Akiflow-#{version}-universal.dmg"
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
