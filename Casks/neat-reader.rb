cask "neat-reader" do
  version "8.1.3"
  sha256 "d8d76bc7c9e1254f61f47fefe865d631a2f98dfe897b079187ab2294b2496c0e"

  url "https://neat-reader-release.oss-cn-hongkong.aliyuncs.com/NeatReader-#{version}.dmg",
      verified: "neat-reader-release.oss-cn-hongkong.aliyuncs.com/"
  name "Neat Reader"
  desc "Read, annotate and manage ePub books"
  homepage "https://www.neat-reader.com/"

  livecheck do
    url "https://www.neat-reader.com/download/start-download?target=mac"
    regex(/name=["']?deviceVersion["']?\s*value=["']?(\d+(?:\.\d+)+)["' >]/i)
  end

  app "NeatReader.app"

  zap trash: [
    "~/Library/Application Support/NeatReader",
    "~/Library/Logs/NeatReader",
    "~/Library/Preferences/com.reader.neat.plist",
    "~/Library/Saved Application State/com.reader.neat.savedState",
  ]
end
