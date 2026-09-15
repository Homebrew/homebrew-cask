cask "taphouse" do
  version "1.5.8.2"
  sha256 "7a7920566e9723bbdcba50ccd662d3411358247700e973cfcf049e79f1d247c2"

  url "https://taphouse.multimodalsolutions.gr/downloads/Taphouse-#{version}.dmg"
  name "Taphouse"
  desc "Native GUI for Homebrew package management"
  homepage "https://taphouse.multimodalsolutions.gr/"

  livecheck do
    url "https://taphouse.multimodalsolutions.gr/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Taphouse.app"

  uninstall quit: "com.multimodalsolutions.taphouse"

  zap trash: [
    "~/Library/Application Support/Taphouse",
    "~/Library/Caches/Taphouse",
    "~/Library/Preferences/com.multimodalsolutions.taphouse.plist",
  ]
end
