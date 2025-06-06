cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.22.3-0.20250602173116-6d8d477f592d"
  sha256 arm:          "59e945cdd3de6aa8054e40633ef39ed26cfc0c3d2f13ebb137ddfc3e38536824",
         intel:        "f48c00b23ccd9c911e0c3f3b438b719cba53cce25da7f4158af8e622388cd3c6",
         arm64_linux:  "080587ee0b1bc12e04cff2d503504cd419f7da5a652759b3a3cc844c80773ba0",
         x86_64_linux: "45d259636952d956a7f55b4a693a556fa6b11696a0d2da74ef3e0b6fea0402f7"

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
