cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.25.1-0.20251008154743-4dc3b547981b"
  sha256 arm:          "8adbf1b1653f8ca14dda016f1b7b0fd781622d17ed055ff297bdfae7f498f7de",
         intel:        "1225b01e651f061096411f4ceab53d8527a8c43518a298fa1a2ebe11bf85cd3b",
         arm64_linux:  "2173d557c3827606001c8af3906183539ae07546caeb282cc4ef0075c735e483",
         x86_64_linux: "9d2d8b1246a9a4e4f8e916144d2a0c21096c0a19eb260de2e320590d3103ef18"

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
