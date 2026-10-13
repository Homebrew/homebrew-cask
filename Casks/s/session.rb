cask "session" do
  arch arm: "arm64", intel: "x64"

  version "1.18.2"
  sha256 arm:   "074441f1c4ba57a788ceb8a0ed1fb1172aa20e9452e5bf97e1aab775ab9abdc4",
         intel: "130ec1853c784846ac2fff6b588aee6d767696d06a4ed63918b0183b8e8f8603"

  url "https://github.com/session-foundation/session-desktop/releases/download/v#{version}/session-desktop-mac-#{arch}-#{version}.dmg"
  name "Session"
  desc "Onion routing based messenger"
  homepage "https://getsession.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Session.app"

  zap trash: [
    "~/Library/Application Support/Session",
    "~/Library/Caches/Session",
    "~/Library/Preferences/com.loki-project.messenger-desktop.plist",
    "~/Library/Saved Application State/com.loki-project.messenger-desktop.savedState",
  ]
end
