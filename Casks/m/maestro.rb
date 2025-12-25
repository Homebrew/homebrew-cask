cask "maestro" do
  arch arm: "-arm64"

  version "0.12.0"
  sha256 arm:   "230e475535c8ebea3492984dbcbb61b11cf8351975884b201840cb3c5688ad6f",
         intel: "40b1e28bb847dbf4584ce58c7dba92f850bf7e3882c3f56a55e2bb1fc6901df9"

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
