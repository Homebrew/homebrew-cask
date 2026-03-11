cask "t3-code" do
  arch arm: "arm64", intel: "x64"

  version "0.0.10"
  sha256 arm:   "651e1323f0d4cfc60de9c4018da4b5e30d1a74a3cd69468a7fd3bf756eef705b",
         intel: "efa250039f67928eb16e4b490178c38f0105d545ca26a435825e5a35a707a2a1"

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
