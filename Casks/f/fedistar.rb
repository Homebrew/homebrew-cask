cask "fedistar" do
  version "1.12.6"
  sha256 "51eb932e7c51f0a4c64e949fbb29f7e2301041692500bc57ac0117c147678e09"

  url "https://github.com/h3poteto/fedistar/releases/download/v#{version}/fedistar_#{version}_universal.dmg",
      verified: "github.com/h3poteto/fedistar/"
  name "fedistar"
  desc "Multi-column Mastodon, Pleroma, and Friendica client for desktop"
  homepage "https://fedistar.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "fedistar.app"

  zap trash: [
    "~/Library/Application Scripts/*.net.fedistar",
    "~/Library/Application Scripts/net.fedistar",
    "~/Library/Containers/net.fedistar",
    "~/Library/Group Containers/*.net.fedistar",
  ]
end
