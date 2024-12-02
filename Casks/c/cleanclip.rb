cask "cleanclip" do
  version "2.3.4"
  sha256 "0b926092c853441a43b6431e8eb9af2e7064428f556acfcccd1435425e9aca29"

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
