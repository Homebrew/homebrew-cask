cask "thoughtdag" do
  arch arm: "-arm64"

  version "0.5.25"
  sha256 arm:   "20d8cc430f15964ef6ca44c9371ffea317b586684ada6e6baba4b3073427a6f0",
         intel: "b0547cbdd82d22a165df12db14ae482ab26ddcaf36ea56871b2a1074f1883455"

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
