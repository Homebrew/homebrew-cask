cask "akiflow" do
  version "2.28.14"
  sha256 "9e8aaa3cf964c0f54b6cf59a4ddb1e40e8addd854676443da7541a8c9be0808c"

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
