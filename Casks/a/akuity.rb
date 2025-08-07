cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.24.1-0.20250807051219-3df1e21620d5"
  sha256 arm:          "66a01ce2dd495cddab0382cb42f9f9c8779dde5a37d6a4c07baf05594f7f3ed4",
         intel:        "6a76280f73ce4df684244fe30ff50d2d579bcea6da814328e078f424c068e3a3",
         arm64_linux:  "44d3fcea2ee5ff14e5c1d1f669c0e0b79ff3112bd0a63fe6f9f2ec5c2bca2a96",
         x86_64_linux: "5818a46befc80f370e0d4a82ac9e80399a787ba7db33bb62278847a4676753bf"

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
