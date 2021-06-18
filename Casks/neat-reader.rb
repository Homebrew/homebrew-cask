cask "neat-reader" do
  version "7.0.6"
  sha256 "9cbef1dd7a704e5d1204fcba1b4aa6e5723ab4c50efb08ce8b98e6b70b8c97ca"

  url "https://neat-reader-release.oss-cn-hongkong.aliyuncs.com/NeatReader-#{version}.dmg",
      verified: "neat-reader-release.oss-cn-hongkong.aliyuncs.com/"
  name "Neat Reader"
  desc "Read, annotate and manage ePub books"
  homepage "https://www.neat-reader.com/"

  livecheck do
    url "https://www.neat-reader.com/download/start-download?target=mac"
    regex(/name=["']?deviceVersion["']?\s*value=["']?(\d+(?:\.\d+)*)["' >]/i)
  end

  app "NeatReader.app"

  zap trash: [
    "~/Library/Application Support/NeatReader",
    "~/Library/Logs/NeatReader",
    "~/Library/Preferences/com.reader.neat.plist",
    "~/Library/Saved Application State/com.reader.neat.savedState",
  ]
end
