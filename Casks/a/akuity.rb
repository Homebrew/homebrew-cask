cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.23.1-0.20250623102604-c179a6341243"
  sha256 arm:          "5544bfea4a8eda9d866992d98fabad0ca3926ca7707b1c2b08378aa1f9866a59",
         intel:        "4982ce91656d4ef8564d30c81f432bda67bcfca3d52486c7373ae3453416f394",
         arm64_linux:  "86b3409af74257b8fcf8e9bdfd26fb25bcaa2a15413daf278ace32a4ea47baea",
         x86_64_linux: "a3753f2984bd8b11c1567dac3017fbf0ec9222d2cd3cf352c3fbc9e7717d73a8"

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
