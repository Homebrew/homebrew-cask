cask "openclip" do
  version "1.7.0"
  sha256 "d8b862af4ca124c8fb482c67733c6df8a26e21b8469c50d1e0cf986e3083e76d"

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
