cask "fixkey" do
  version "2.1.3"
  sha256 "4bbb712b26c5da1446c69e3949b5efba9a8e03508e47683212d23da4deb7dffa"

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
