cask "multitouch" do
  version "1.24.11,138"
  sha256 "618b57927e083984eb1b887c654368994ec2f1f6a5ea492940c864ce73093f89"

  url "https://multitouch.app/downloads/multitouch#{version.before_comma}.dmg"
  name "Multitouch"
  desc "Add more gestures for Trackpad and Magic Mouse"
  homepage "https://multitouch.app/"

  livecheck do
    url "https://www.multitouch.app/downloads/updates.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Multitouch.app"

  zap trash: [
    "~/Library/Preferences/com.brassmonkery.Multitouch",
    "~/Library/Application Support/Multitouch",
    "~/Library/Caches/com.brassmonkery.Multitouch",
  ]
end
