cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.27.2-0.20260130081052-d80b68d9f77d"
  sha256 arm:          "99d53da375d36cfc97345cf6b93ca8c6c8b3fa29581e61976496f5f794de304a",
         intel:        "3f1c6a06212db90b01e8dd17d9d35b8a98bc9f79489e5b3d3b11f2cdd89e3f6a",
         arm64_linux:  "825c37fc63380cabd942e2360c8b2ac265f53cbc07d851a8f962bfe6b60e1e27",
         x86_64_linux: "3289536bb66bab0585d0b1cb3d907103369ca162600cf8b5e4b780af6215c74c"

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
