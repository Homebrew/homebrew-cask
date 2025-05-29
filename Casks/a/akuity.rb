cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.22.3-0.20250529061726-4bc13a708e53"
  sha256 arm:          "690549696be509475a7fa23a7215ef438d9c863e10297769e762e2cd32a8f07c",
         intel:        "278205492625d7f284fccb6cb8167959ceda8d9bbdb4929a96f8a5b80c00ad4e",
         arm64_linux:  "3b239476bae7547363b3aa9c1b70c15fbc8717d09ab3abe0fd8afa8ad777222e",
         x86_64_linux: "bb090f94d621469b3b9b8c2357bb412a7d1ac22ffcdaa572c984cbd5531fb026"

  url "https://dl.akuity.io/akuity-cli/v#{version}/#{os}/#{arch}/akuity"
  name "Akuity"
  desc "Management tool for the Akuity Platform"
  homepage "https://akuity.io/"

  livecheck do
    url "https://dl.akuity.io/akuity-cli/stable.txt"
    regex(/v?(\d+(?:\.\d+)+(?:[_-]\d+(?:\.\d+)*)?(?:[_-]\h+)?)/i)
  end

  binary "akuity"

  zap trash: "~/.config/akuity"
end
