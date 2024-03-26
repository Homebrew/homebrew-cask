cask "fedistar" do
  version "1.9.1"
  sha256 "2f9cb1153ede6ccf42fff8e9a4414a81ea08bcf11dbd3c699f0d93326e2454db"

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
