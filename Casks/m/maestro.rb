cask "maestro" do
  arch arm: "arm64", intel: "x64"

  version "0.15.3"
  sha256 arm:   "5bc05f63c211fa0d33f14d2e16fcf1ab59e8ff25830b896865c5154d1c5bb061",
         intel: "22e3f0f739787018e6702c04c48e1ca4c4f98586d7c66358c13bacf46780378f"

  url "https://github.com/pedramamini/Maestro/releases/download/v#{version}/Maestro-#{version}-#{arch}-mac.dmg",
      verified: "github.com/pedramamini/Maestro/"
  name "Maestro"
  desc "AI agent command center"
  homepage "https://runmaestro.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Maestro.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.maestro.app.sfl*",
    "~/Library/Application Support/maestro",
    "~/Library/Preferences/com.maestro.app.plist",
  ]
end
