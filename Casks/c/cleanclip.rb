cask "cleanclip" do
  version "2.3.1"
  sha256 "04bc4f674a326701debdd3f7ca8fab8f2cd910824c630c9b3cc603280c9fbe68"

  url "https://cleanclip.cc/releases/download/v#{version}/CleanClip.dmg"
  name "CleanClip"
  desc "Clipboard manager"
  homepage "https://cleanclip.cc/"

  livecheck do
    url "https://cleanclip.cc/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "CleanClip.app"

  zap trash: [
    "~/Library/Application Support/CleanClip",
    "~/Library/Caches/com.antiless.cleanclip.mac",
    "~/Library/Preferences/com.antiless.cleanclip.mac.plist",
  ]
end
