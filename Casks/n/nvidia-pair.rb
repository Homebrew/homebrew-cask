cask "nvidia-pair" do
  arch arm: "arm64", intel: "x64"

  version "0.1.1"
  sha256 arm:   "ee719fd699308c87e289f799cd780b799636343865638e8af65a57b953cb3f44",
         intel: "fc1679d50fd94dab892b637ae3a5db482837b3c5d13861b22df88cd4bbf97fb4"

  url "https://github.com/NVIDIA/Personal-AI-Router/releases/download/v#{version}/NVPAIR-Setup-#{version}-#{arch}.dmg"
  name "NVIDIA Personal AI Router"
  name "PAIR"
  desc "Local inference router for a group of compatible computers"
  homepage "https://github.com/NVIDIA/Personal-AI-Router"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "PAIR.app"

  uninstall quit: "com.nvidia.nvpair"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.nvidia.nvpair.sfl*",
    "~/Library/Application Support/Nvidia Corporation/Personal AI Router",
    "~/Library/Logs/Personal AI Router",
    "~/Library/Preferences/com.nvidia.nvpair.plist",
    "~/Library/Saved Application State/com.nvidia.nvpair.savedState",
  ]
end
