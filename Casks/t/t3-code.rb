cask "t3-code" do
  arch arm: "arm64", intel: "x64"

  version "0.0.4"
  sha256 arm:   "14ab774434354b02dfe9f3adb4ae5f2029ddf1965612f209a825ada8da9dff99",
         intel: "9c7d7bd2a71bc5213599b98e96180cfe1677afde823617218e18c75bec3cb84b"

  url "https://github.com/pingdotgg/t3code/releases/download/v#{version}/T3-Code-#{version}-#{arch}.dmg"
  name "T3 Code"
  desc "Minimal GUI for code agents like Codex and Claude Code"
  homepage "https://github.com/pingdotgg/t3code"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
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
