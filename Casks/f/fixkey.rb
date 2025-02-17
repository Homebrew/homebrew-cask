cask "fixkey" do
  version "2.9.1"
  sha256 "94f3a4e47125312d53a2d3a9e15ce5a0beb663677d158cf1d343272bca32b096"

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
