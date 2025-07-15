cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.23.1-0.20250714222430-65f45d9172a8"
  sha256 arm:          "ed8d4bd9d64e296f56aca449cbfa424f299d7fc5474b649aa3618e052cbe9f24",
         intel:        "9f553dde1a551956223e7d781bf776ced801d0351cb3e8709432dd58d149b6bc",
         arm64_linux:  "03f1dd88015e9640f87a8be18f2e85163a9c705e716a36ff4c770034f018bcb2",
         x86_64_linux: "d94d24c167095822604184a151047087fd9ee3524a2c628ab7a6f237ae563a2f"

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
