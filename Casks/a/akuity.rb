cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.25.1-0.20250916161617-6e29eaf299d3"
  sha256 arm:          "178339c53e5c8fdd1fc3247bab9302c69a5a51bbc08abb617dba1bfc6c4d7b22",
         intel:        "07e53c85a66c29f788e24971518d5a56040d71c8a0ce18ddf814aba69a3cf7ad",
         arm64_linux:  "deaeaeaea086b5275c54551a940a8c5ceaa51830cd7879ef28b89098133fc61a",
         x86_64_linux: "b3b9158472b04c13ecdcba3076ab7a6b1202696ccd61c73ec6188eacf58d2e8b"

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
