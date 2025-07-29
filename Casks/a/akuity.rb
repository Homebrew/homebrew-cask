cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.24.1-0.20250728160757-3c47b6109896"
  sha256 arm:          "7e3d8faf7926c8e1ecf4cf4a44159728393e72b8e757303cf3682066d2d32a86",
         intel:        "fdfedae8afe5497b7d90b2c07d209fd3e0a9edd223d8430152ce34f60f609b56",
         arm64_linux:  "9a953c90bc58299f0dd6caa06fd608b6358d25d28ac7f0213bc2d82c7d264a36",
         x86_64_linux: "0f2980b27ae822e91048b0750afde79dd0ba22b583ff73e9b41ed5c7fb2ae47d"

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
