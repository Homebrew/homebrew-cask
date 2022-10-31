cask "akiflow" do
  version "2.29.13"
  sha256 "4ea93bf4927891461cd10ed1f7455cbeab92905db7cd9ffec7f7c150e5f75490"

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
