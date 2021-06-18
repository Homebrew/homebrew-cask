cask "aurora" do
  version "5.0.3"
  sha256 "4293c5ffdf6eb8e5d7031f02b1c83238472f486fe8a964f2f62ac71c72c22eb2"

  url "https://www.oneperiodic.com/files/Aurora%20v#{version}.zip"
  name "Aurora"
  desc "Alarm clock"
  homepage "https://www.oneperiodic.com/products/aurora/"

  livecheck do
    url "https://www.oneperiodic.com/aurora#{version.major}.xml"
    strategy :sparkle
  end

  app "Aurora.app"

  zap trash: [
    "~/Library/Application Support/Aurora",
    "~/Library/Caches/com.oneperiodic.Aurora",
    "~/Library/Caches/com.apple.helpd/Generated/Aurora Help*5.0.3",
    "~/Library/Preferences/com.oneperiodic.Aurora.plist",
    "~/Library/Saved Application State/com.oneperiodic.Aurora.savedState",
  ]
end
