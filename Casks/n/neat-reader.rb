cask "neat-reader" do
  version "9.0.10"
  sha256 "42171f33db0f7c52ab4988739f1dcfefe3dfdb25d8a92e26644679ccea334df2"

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

  caveats do
    requires_rosetta
  end
end
