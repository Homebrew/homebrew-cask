cask "fixkey" do
  version "2.9.2"
  sha256 "77f7c0d213d37f86f0cef6499e7b0ec01aa7bbd03a87637c402e329423946f30"

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
  depends_on macos: :ventura

  app "fixkey.app"

  zap trash: [
    "~/Library/Application Support/fixkey",
    "~/Library/Caches/fixkey",
    "~/Library/HTTPStorages/fixkey",
    "~/Library/Preferences/fixkey.plist",
  ]
end
