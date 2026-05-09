cask "t3-code" do
  arch arm: "arm64", intel: "x64"

  version "0.0.23"
  sha256 arm:   "86d966f39bd55e3847b06192c9dc5b9af2fef7495a2e7c7e7e5b13ed58f94b52",
         intel: "6bb43e98d21731b84567a61e2baf9785beb3a50f4141331ac790ea5990e83364"

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
