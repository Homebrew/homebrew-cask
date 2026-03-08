cask "stravu-crystal" do
  version "0.3.5"
  sha256 "5e7df5646f426c19f808fd3e4e4e4288ef00d708c7cf6c51fcb10068490b4d6e"

  url "https://github.com/stravu/crystal/releases/download/v#{version}/Crystal-#{version}-macOS-universal.dmg"
  name "Crystal"
  desc "Run multiple Claude Code instances simultaneously using git worktrees"
  homepage "https://github.com/stravu/crystal"

  # There can be a notable gap between when a version is tagged and a
  # corresponding release is created, so we check the "latest" release instead
  # of the Git tags.
  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Crystal.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.stravu.crystal.sfl*",
    "~/Library/Application Support/Crystal",
    "~/Library/Caches/com.stravu.crystal",
    "~/Library/Caches/com.stravu.crystal.ShipIt",
    "~/Library/HTTPStorages/com.stravu.crystal",
    "~/Library/Logs/Crystal",
    "~/Library/Preferences/com.stravu.crystal.plist",
    "~/Library/Saved Application State/com.stravu.crystal.savedState",
  ]
end
