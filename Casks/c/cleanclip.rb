cask "cleanclip" do
  version "2.4.5"
  sha256 "50a6a3e0bfa3cd6cacefe4a98c84426b203c5c3a2d2169910966012350103f39"

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
