cask "session" do
  arch arm: "arm64", intel: "x64"

  version "1.17.0"
  sha256 arm:   "d3d833d0ee347941f0fb40c22ed198130be10e26bd565e76e4cbe197b84779e2",
         intel: "b1f25634d4246a61afabe0a4a9ac0ed398d0779594937cd341e204cf37d402df"

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
