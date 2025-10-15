cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.25.1-0.20251015175626-f580c0fc661d"
  sha256 arm:          "d75ba03687a41e4f7179c862de232bb92c3545c95bd2f173135ef11106a303e4",
         intel:        "25a6aa2cf88dc16c7fa3c1db46c814b4282a1b781e451ace51141c11133f2e0b",
         arm64_linux:  "0da6f389ff3e234fc169f76466f4896e50143a86f701cec5d44546dabc0e630c",
         x86_64_linux: "ca20a2e0d76fb0e14eb75a8642541973ba91a96cf1e901269f622fc27e8e9919"

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
