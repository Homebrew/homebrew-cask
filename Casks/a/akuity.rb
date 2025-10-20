cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.25.1-0.20251016123446-11046547f74a"
  sha256 arm:          "03a698ffd502e8a855a015fd37fea9f7e07349aaca83e9b268701963caf41ac2",
         intel:        "ac4e48e836a70c3060eccd64eac5671e91093da93f6e0656a0c66f93c682f43c",
         arm64_linux:  "20731bded4b377e5cbdbe71577afac45e545d1b514b9abc2de6424a91f1254b7",
         x86_64_linux: "2c24ba8373165f072675b640d88e3298c431dce13a16dd3576750e5a80248a76"

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
