cask "taphouse" do
  version "1.5.6.4"
  sha256 "d0e49edcc979d7bc8588998f6e4102cd2383949c86db95daef8602fde4c8cc91"

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
