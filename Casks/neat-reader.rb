cask "neat-reader" do
  version "8.0.8"
  sha256 "4589b5aba73369e8525eda40d227196fc7ef377fc74ac909fa9bf1ebacbda9c3"

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
