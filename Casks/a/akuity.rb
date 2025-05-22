cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.22.3-0.20250522082133-e9374cfd99d3"
  sha256 arm:          "0f46a1a47a28de40b48c4b77843303ab395e4337b45072f6e21b3c1d88a09c89",
         intel:        "e003ac6809df668a98076775e641c628c1c9b325ee0a6f44534986b1fb9a4f96",
         arm64_linux:  "ba2b484cd616f9f93ad17b07ea51faa4c858bbb9a5ee1755cedda357ec1f8b53",
         x86_64_linux: "e358eef6afb1badbfe171576ddf8cc522b3626eab4529b03c8ba512e68664fbb"

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
