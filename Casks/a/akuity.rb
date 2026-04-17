cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.29.0-rc.1.0.20260417070324-9d183e79ac8f"
  sha256 arm:          "3ac563e7316a4a29780b9a5a02ad7ad7b1bd7f75ef078379c6ef90274f1b8715",
         intel:        "78f0b89e6c4c1635ce29b8972a6a2cd7b66ff3d5c5d023293bcfa3a3c84c7408",
         arm64_linux:  "987eca2e598fc2bab0ef0200587491f44ef2afc31033b78c0d329b1d6229df38",
         x86_64_linux: "c0b4b4a93a9018fd517ad2e1ed2c56dc691ea15692cc206a419d7a73c4dd6744"

  url "https://dl.akuity.io/akuity-cli/v#{version}/#{os}/#{arch}/akuity"
  name "Akuity"
  desc "Management tool for the Akuity Platform"
  homepage "https://akuity.io/"

  livecheck do
    url "https://dl.akuity.io/akuity-cli/stable.txt"
    regex(/^v?(\d+(?:\.\d+)+(?:-rc(?:\.\d+)*)?(?:[._-]\d+(?:\.\d+)*)?(?:[_-]?\h+)?)$/i)
  end

  binary "akuity"

  zap trash: "~/.config/akuity"
end
