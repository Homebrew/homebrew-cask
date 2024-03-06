cask "cleanclip" do
  version "2.1.3"
  sha256 "115587feb0793282fef34eb5d640edc7adfb47188f5adf254268187f56871116"

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
