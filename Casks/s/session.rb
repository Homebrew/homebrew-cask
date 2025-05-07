cask "session" do
  arch arm: "arm64", intel: "x64"

  version "1.16.0"
  sha256 arm:
                "29f767b92aeaca116e0680b1cbb8950f68bd8a6b0682d807435a5859085c06ea",
         intel: "12fad84567dff4b4ae799508d0aa9606777cc969d8c864105c2cd83c3bd49e93"

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
