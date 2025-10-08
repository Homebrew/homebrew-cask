cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.25.1-0.20251007190943-f8f735ce4be1"
  sha256 arm:          "4e5353027d6befa6089e3f3bce88e9e8084c5d8acbb95357fefff57f33d91b74",
         intel:        "c35f02df23430808deceedd66cef45ba505fa2cb7ffa72caaa56b7df64fb477b",
         arm64_linux:  "63e86454e5064c9dc72fa20d7aacb543dc2d77f69d55f946d8332ebe4d712bc0",
         x86_64_linux: "fd901e1d00c99807c1085c79aa9dea121f1388dd758bde16d683e725c79d8741"

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
