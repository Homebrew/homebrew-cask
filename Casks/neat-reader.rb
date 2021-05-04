cask "neat-reader" do
  version "7.0.5"
  sha256 "72f5ff8cfe0170e30ace5524956c0b529a5be47758cf5187dfa3625add933e43"

  url "https://neat-reader-release.oss-cn-hongkong.aliyuncs.com/NeatReader-#{version}.dmg",
      verified: "neat-reader-release.oss-cn-hongkong.aliyuncs.com/"
  name "Neat Reader"
  desc "Read, annotate and manage ePub books"
  homepage "https://www.neat-reader.com/"

  livecheck do
    url "https://www.neat-reader.cn/downloads/mac"
    strategy :page_match
    regex(/NeatReader-(\d+(?:\.\d+)*)\.dmg/i)
  end

  app "NeatReader.app"

  zap trash: [
    "~/Library/Application Support/NeatReader",
    "~/Library/Logs/NeatReader",
    "~/Library/Preferences/com.reader.neat.plist",
    "~/Library/Saved Application State/com.reader.neat.savedState",
  ]
end
