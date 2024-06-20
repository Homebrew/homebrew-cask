cask "fedistar" do
  version "1.9.7"
  sha256 "6f6be29d6379ae417fa247cc0c7d61b2b2e9476a2a82b6218c4c937c10ae948b"

  url "https://github.com/h3poteto/fedistar/releases/download/v#{version}/fedistar_#{version}_universal.dmg",
      verified: "github.com/h3poteto/fedistar/"
  name "fedistar"
  desc "Multi-column Mastodon, Pleroma, and Friendica client for desktop"
  homepage "https://fedistar.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "fedistar.app"

  zap trash: [
    "~/Library/Application Scripts/*.net.fedistar",
    "~/Library/Application Scripts/net.fedistar",
    "~/Library/Containers/net.fedistar",
    "~/Library/Group Containers/*.net.fedistar",
  ]
end
