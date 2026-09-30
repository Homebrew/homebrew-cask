cask "openclip" do
  version "1.7.2"
  sha256 "7bf9e9bfdad5d4b53c7092352b20269b99ca42ea905c46d9992d91a406f1dfe1"

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
