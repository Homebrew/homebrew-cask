cask "fedistar" do
  version "1.8.1"
  sha256 "ac782f7d1465f645ecd840cdaf0fd3023ed60fca86b029d42a33374decb813a9"

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
