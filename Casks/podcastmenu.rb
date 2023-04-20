cask "podcastmenu" do
  version "1.3"
  sha256 "bff1a2b2b5f6c6eac37f567fdf917b696b1ef0b203f61725e44274461f957e31"

  url "https://github.com/insidegui/PodcastMenu/raw/master/Releases/PodcastMenu_v#{version}.zip"
  name "PodcastMenu"
  desc "Tool to display Overcast on the menu bar"
  homepage "https://github.com/insidegui/PodcastMenu"

  livecheck do
    url "https://github.com/insidegui/PodcastMenu/raw/master/Releases/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "PodcastMenu.app"

  zap trash: [
    "~/Library/Application Support/br.com.guilhermerambo.PodcastMenu",
    "~/Library/Caches/br.com.guilhermerambo.PodcastMenu",
    "~/Library/Preferences/br.com.guilhermerambo.PodcastMenu.plist",
  ]
end
