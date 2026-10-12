cask "openclip" do
  version "1.8.2"
  sha256 "b400196ab1ffee3dba198af7657b1a16887a39d6ff558c5b0ee28f016c185dd3"

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
