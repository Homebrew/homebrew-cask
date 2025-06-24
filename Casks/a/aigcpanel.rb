cask "aigcpanel" do
  arch arm: "arm64", intel: "x64"

  version "0.12.0"
  sha256 arm:   "8efb6d9424ef6e86ac94c8dc84dd139ec90f681494e9d9f3196023a599b09fd5",
         intel: "a75f06b4d0cd6afe2253be47ffc35aaa85a272f80c3afa59b188c4f07166ccee"

  url "https://github.com/modstart-lib/aigcpanel/releases/download/v#{version}/AigcPanel-#{version}-mac-#{arch}.dmg",
      verified: "github.com/modstart-lib/aigcpanel/"
  name "AigcPanel"
  desc "AI video, audio and broadcast generator"
  homepage "https://aigcpanel.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "AigcPanel.app"

  zap trash: [
    "~/Library/Application Support/aigcpanel",
    "~/Library/Preferences/AigcPanel.plist",
    "~/Library/Saved Application State/AigcPanel.savedState",
  ]
end
