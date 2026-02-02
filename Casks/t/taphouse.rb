cask "taphouse" do
  version "1.4.6"
  sha256 "ac10148957499260010c6d8df1b1f08875a4041b647725855559d39761e96a00"

  url "https://taphouse.multimodalsolutions.gr/downloads/Taphouse-#{version}.dmg"
  name "Taphouse"
  desc "Native GUI for Homebrew package management"
  homepage "https://taphouse.multimodalsolutions.gr/"

  livecheck do
    url "https://taphouse.multimodalsolutions.gr/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Taphouse.app"

  zap trash: [
    "~/Library/Application Support/Taphouse",
    "~/Library/Caches/Taphouse",
    "~/Library/Preferences/com.multimodalsolutions.taphouse.plist",
  ]
end
