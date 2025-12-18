cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.26.2-0.20251217211021-700825d13a45"
  sha256 arm:          "df693a1058387c8b70719f49c13c3ef1d7b38d6e23087cefc2a595477c494820",
         intel:        "3b080584a050e06337f230cd69c5c2e8f28b017e094d6b0b64025f72b667c3f5",
         arm64_linux:  "7da8e7bf91fb055da95be88f7980af9b0eb1f1788a7bc22bf8fc43a9eea0dc48",
         x86_64_linux: "91da9c0a54f141e8400d80fb65b815b13ad44faf88424935651ca8297bf6669d"

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
