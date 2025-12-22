cask "jt-bridge" do
  version "3.4.3"
  sha256 "bce72da1bd44175b86f5eceec4716e212ad8eacbd2da999198112ab995b8d02f"

  url "https://jt-bridge.eller.nu/download/JT-Bridge.app-#{version}.zip",
      user_agent: :browser
  name "JT-Bridge"
  desc "Acts as a bridge between WSJT-X and ham radio logging application"
  homepage "https://jt-bridge.eller.nu/"

  livecheck do
    url "https://jt-bridge.eller.nu/downloads/",
        user_agent: :browser
    regex(/JT[._-]Bridge[._-]app[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  app "JT-Bridge.app"

  zap trash: [
    "~/Library/Application Scripts/nu.eller.JT-Bridge",
    "~/Library/Containers/nu.eller.JT-Bridge",
  ]
end
