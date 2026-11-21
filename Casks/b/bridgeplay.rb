cask "bridgeplay" do
  version "0.7.65"
  sha256 "13490f68e4a471b8a325ec911723a00afffb8cf5645e4bceaa180b0190c0d45e"

  url "https://github.com/raymondchins/Bridgeplay/releases/download/v#{version}/Bridgeplay.dmg"
  name "Bridgeplay"
  desc "Run Windows Steam games inside native Steam"
  homepage "https://bridgeplay.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Bridgeplay.app"

  zap trash: [
    "~/.bridgeplay",
    "~/Library/Application Support/bridgeplay",
    "~/Library/Caches/bridgeplay",
    "~/Library/Caches/com.bridgeplay.Bridgeplay",
    "~/Library/HTTPStorages/com.bridgeplay.Bridgeplay",
    "~/Library/HTTPStorages/com.bridgeplay.Bridgeplay.binarycookies",
    "~/Library/Preferences/com.bridgeplay.Bridgeplay.plist",
  ]
end
