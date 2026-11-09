cask "nextpad++" do
  version "1.1.2"
  sha256 "03e321f496a38a940d68c09403c9d13f1e866d73d00d5c4dd4894ec3bc1a8739"

  url "https://github.com/nextpad-plus-plus/nextpad-plus-plus-macos/releases/download/v#{version}/Nextpad++v#{version}.dmg"
  name "Nextpad++"
  desc "Unofficial native port of Notepad++"
  homepage "https://nextpad.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Nextpad++.app"

  uninstall quit: "org.nextpadplusplus.mac"

  zap trash: [
    "~/.nextpad++",
    "~/Library/Application Support/Nextpad++",
    "~/Library/Caches/org.nextpadplusplus.mac",
    "~/Library/HTTPStorages/org.nextpadplusplus.mac",
    "~/Library/Preferences/org.nextpadplusplus.mac.plist",
    "~/Library/Saved Application State/org.nextpadplusplus.mac.savedState",
    "~/Library/WebKit/org.nextpadplusplus.mac",
  ]
end
