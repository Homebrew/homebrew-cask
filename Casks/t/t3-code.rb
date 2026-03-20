cask "t3-code" do
  arch arm: "arm64", intel: "x64"

  version "0.0.13"
  sha256 arm:   "9f2a7b9fb26a777b078805d48d583de8530226f08463e9ff788aa0ff3a2129c8",
         intel: "10230fc2183659dfc984eb80141095f792a555e9a8ad0767dd5e0ef3344c3a7f"

  url "https://github.com/pingdotgg/t3code/releases/download/v#{version}/T3-Code-#{version}-#{arch}.dmg",
      verified: "github.com/pingdotgg/t3code/"
  name "T3 Code"
  desc "Minimal GUI for AI code agents"
  homepage "https://t3.codes/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "T3 Code (Alpha).app"

  zap trash: [
    "~/.t3/userdata",
    "~/Library/Application Support/T3 Code (Alpha)",
    "~/Library/Caches/com.t3tools.t3code",
    "~/Library/HTTPStorages/com.t3tools.t3code",
    "~/Library/Preferences/com.t3tools.t3code.plist",
    "~/Library/Saved Application State/com.t3tools.t3code.savedState",
  ]
end
