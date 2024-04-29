cask "fixkey" do
  version "1.5.0"
  sha256 "52e322d6b1375e68e716e1abd62f60ae6d740a7f0316c83a2614ec528342615a"

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
