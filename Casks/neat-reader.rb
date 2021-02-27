cask "neat-reader" do
  version "6.0.8"
  sha256 "6652eef87ca440bad5ebd6b3337f3daaab7eea30252e9c4ef57dd096c9ad4b06"

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
