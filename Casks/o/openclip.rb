cask "openclip" do
  version "1.10.0"
  sha256 "e35498402811de3c9a3843e458bfe29b39880e9a2c9bde57ec5e351173bcf75e"

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
