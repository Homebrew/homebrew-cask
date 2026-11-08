cask "thoughtdag" do
  arch arm: "-arm64"

  version "0.5.28"
  sha256 arm:   "32a3852113b5c93a922a74bf8fb9ac50813c8b628339df2bdb900d7776fc2c29",
         intel: "d3654cd1c6b8035d0b1a850daf40e3337d8328ce8b03e18ecbdba3e5a9c60dc8"

  url "https://github.com/chenxiachan/thoughtdag/releases/download/v#{version}/ThoughtDAG-#{version}#{arch}.dmg"
  name "ThoughtDAG"
  desc "Visual workspace for editable LLM context graphs"
  homepage "https://chenxiachan.github.io/thoughtdag/"

  auto_updates true
  depends_on macos: :monterey

  app "ThoughtDAG.app"

  uninstall quit: "io.github.chenxiachan.thoughtdag"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.github.chenxiachan.thoughtdag.sfl*",
    "~/Library/Application Support/thoughtdag-desktop",
    "~/Library/Caches/io.github.chenxiachan.thoughtdag",
    "~/Library/HTTPStorages/io.github.chenxiachan.thoughtdag",
    "~/Library/Logs/ThoughtDAG",
    "~/Library/Preferences/io.github.chenxiachan.thoughtdag.plist",
    "~/Library/Saved Application State/io.github.chenxiachan.thoughtdag.savedState",
  ]
end
