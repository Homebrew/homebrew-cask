cask "maestro" do
  arch arm: "-arm64"

  version "0.9.1"
  sha256 arm:   "8ca4f96a4ab18477783f66b18834bcfcd201fdb535f4a88b3f7c65857258eb0e",
         intel: "723a62bff5ff02c501b770388d30d45fac04cf75296b84cbb7f8ae1fa32c5574"

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
