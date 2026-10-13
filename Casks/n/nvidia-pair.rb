cask "nvidia-pair" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "46a7545ccaeec959e3321f9d200cc9a32c50207e09f277b4d96297394f461f1b",
         intel: "d0366583df2b601a2f374d2d078b1048573a69c1d143c8eb828593dea67533fc"

  url "https://github.com/NVIDIA/Personal-AI-Router/releases/download/v#{version}/NVPAIR-Setup-#{version}-#{arch}.dmg"
  name "NVIDIA Personal AI Router"
  name "PAIR"
  desc "Local inference router for a group of compatible computers"
  homepage "https://github.com/NVIDIA/Personal-AI-Router"

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
