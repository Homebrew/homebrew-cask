cask "caffeine" do
  version "1.1.4"
  sha256 "1ad34c3299a0c866873c4feb432c3e11186375adb6f43c5f481ae9d46d06d723"

  url "https://github.com/IntelliScape/caffeine/releases/download/#{version}/Caffeine.dmg",
      verified: "github.com/IntelliScape/caffeine/"
  name "Caffeine"
  desc "Utility that prevents the system from going to sleep"
  homepage "https://intelliscapesolutions.com/apps/caffeine"

  conflicts_with cask: "domzilla-caffeine"
  depends_on macos: ">= :big_sur"

  app "Caffeine.app"

  uninstall quit: "com.intelliscapesolutions.caffeine"

  zap trash: [
    "~/Library/Application Support/com.intelliscapesolutions.caffeine",
    "~/Library/Caches/com.intelliscapesolutions.caffeine",
    "~/Library/HTTPStorages/com.intelliscapesolutions.caffeine.binarycookies",
    "~/Library/Preferences/com.intelliscapesolutions.caffeine.plist",
  ]
end
