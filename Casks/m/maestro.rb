cask "maestro" do
  arch arm: "-arm64"

  version "0.14.4"
  sha256 arm:   "7f78a5e55d8d7f1f8149c553e8f229f63f93cd63ee078ed7e4e609af6659f4e1",
         intel: "415e6d9a1ce35a6496db3a84d4149778d7eca481f5485b108e03a56470c910a7"

  url "https://github.com/pedramamini/Maestro/releases/download/v#{version}/Maestro-#{version}#{arch}.dmg",
      verified: "github.com/pedramamini/Maestro/"
  name "Maestro"
  desc "AI agent command center"
  homepage "https://runmaestro.ai/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Maestro.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.maestro.app.sfl*",
    "~/Library/Application Support/maestro",
    "~/Library/Preferences/com.maestro.app.plist",
  ]
end
