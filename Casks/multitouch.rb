cask "multitouch" do
  version "1.25.1,146"
  sha256 "72c320f923d514a38f0f2cbf4d936bf7db9e293afd4c12beeaa9d75877ad936b"

  url "https://multitouch.app/downloads/multitouch#{version.csv.first}.dmg"
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
    "~/Library/Application Support/Multitouch",
    "~/Library/Caches/com.brassmonkery.Multitouch",
    "~/Library/Preferences/com.brassmonkery.Multitouch",
  ]
end
