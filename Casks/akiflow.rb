cask "akiflow" do
  version "2.28.12"
  sha256 "161a15a1186df46a22f230c2ff8d3643cf329790509c73d9c6544506d6e133ea"

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
