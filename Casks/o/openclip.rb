cask "openclip" do
  version "1.7.3"
  sha256 "811ad8648542c1608f0a56a7001a113e2b006489174d59b23f864eef575ff175"

  url "https://github.com/ganeshmshetty/openclip/releases/download/v#{version}/OpenClip-v#{version}.zip"
  name "OpenClip"
  desc "Instant actions for selected text"
  homepage "https://www.getopenclip.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "OpenClip.app"

  zap trash: [
    "~/.openclip",
    "~/Library/Caches/com.openclip.OpenClip",
    "~/Library/HTTPStorages/com.openclip.OpenClip",
    "~/Library/HTTPStorages/com.openclip.OpenClip.binarycookies",
    "~/Library/Logs/OpenClip",
    "~/Library/Preferences/com.openclip.OpenClip.plist",
  ]
end
