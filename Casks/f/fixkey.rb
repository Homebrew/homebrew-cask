cask "fixkey" do
  version "2.5.3"
  sha256 "2d79680b67132403f5d94977de618aed592bffd99eab151edf770db7374bff5e"

  url "https://fixkey.download/fixkey%20#{version}.dmg",
      verified: "fixkey.download/"
  name "fixkey"
  desc "Keyboard-focused AI copilot for writing"
  homepage "https://fixkey.ai/"

  livecheck do
    url "https://fixkey.download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "fixkey.app"

  zap trash: [
    "~/Library/Application Support/fixkey",
    "~/Library/Caches/fixkey",
    "~/Library/HTTPStorages/fixkey",
    "~/Library/Preferences/fixkey.plist",
  ]
end
