cask "fedistar" do
  version "1.13.1"
  sha256 "12d6249bf04ce2123757d81ca0ca6b5feea3afddf7855d738028a3b68c8ad41b"

  url "https://github.com/h3poteto/fedistar/releases/download/v#{version}/fedistar_#{version}_universal.dmg",
      verified: "github.com/h3poteto/fedistar/"
  name "fedistar"
  desc "Multi-column Mastodon, Pleroma, and Friendica client for desktop"
  homepage "https://fedistar.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "fedistar.app"

  zap trash: [
    "~/Library/Application Scripts/*.net.fedistar",
    "~/Library/Application Scripts/net.fedistar",
    "~/Library/Containers/net.fedistar",
    "~/Library/Group Containers/*.net.fedistar",
  ]
end
