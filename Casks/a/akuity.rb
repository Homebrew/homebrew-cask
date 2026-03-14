cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.28.1-0.20260311184310-0533e00f13b0"
  sha256 arm:          "9289ed31b284757c8e144ab53d5d6463cd7c051910715304c157c8c1f1a5b074",
         intel:        "ff6b5ae63005ba16ae0de7cbedc46507b0c8add042f19f1676dadc4f89f850d9",
         arm64_linux:  "66b4e3be63105a725d0b8fe77a408869e19c42db97274545422a004b88fc6efa",
         x86_64_linux: "bd01eeda892e4db973b3a9a5257558d1757ef0ef16a1b6f738e69fe6bbaaa84c"

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
