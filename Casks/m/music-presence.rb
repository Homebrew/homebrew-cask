cask "music-presence" do
  arch arm: "arm64", intel: "x86_64"

  version "2.3.1"
  repo = "github.com/ungive/discord-music-presence"
  sha256 arm:   "8d4ee30b1b32f48a2642b6dad9e68e249e8e6ea80509d772f851cb013bfa26d5",
         intel: "0514627a3fa76f4467f809a9c89fd31c6125bf14380011e2380a1363c59c13d3"

  url "https://#{repo}/releases/download/v#{version}/musicpresence-#{version}-mac-#{arch}.dmg",
      verified: repo.to_s
  name "Music Presence"
  desc "Discord music status that works with any media player"
  homepage "https://musicpresence.app/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest do |json, regex|
      match = json["tag_name"]&.match(regex)
      next if match.blank?

      match[1]
    end
  end

  depends_on macos: ">= :big_sur"

  app "Music Presence.app"

  zap trash: [
    "~/Library/Application Support/Music Presence",
    "~/Library/Preferences/app.musicpresence.desktop.plist",
  ]

  caveats do
    license "https://#{repo}/blob/v#{version}/LICENSE.md"
  end
end
