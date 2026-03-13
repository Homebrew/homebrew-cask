cask "session" do
  arch arm: "arm64", intel: "x64"

  version "1.17.13"
  sha256 arm:   "4f3fb25fe1a46a2e6169efaaef240d5486ecaa266e872c4085b171f8b2a573fa",
         intel: "cf6778886dc73cecd80747a85b61f78c826e4c4eceda8f33a2189c643bb1ba6e"

  url "https://github.com/session-foundation/session-desktop/releases/download/v#{version}/session-desktop-mac-#{arch}-#{version}.dmg",
      verified: "github.com/session-foundation/session-desktop/"
  name "Session"
  desc "Onion routing based messenger"
  homepage "https://getsession.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Session.app"

  zap trash: [
    "~/Library/Application Support/Session",
    "~/Library/Caches/Session",
    "~/Library/Preferences/com.loki-project.messenger-desktop.plist",
    "~/Library/Saved Application State/com.loki-project.messenger-desktop.savedState",
  ]
end
