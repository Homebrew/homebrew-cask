cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.26.2-0.20251210203233-6f8c0a242672"
  sha256 arm:          "1c4b91e26c062a7a33e6aedc814f4224086ec5893d5fd5c8625a8d4924b3f4e3",
         intel:        "291243ac34be3ea494f1c48826428bb414d70fbd203f12fc38a11922ffdcd8b4",
         arm64_linux:  "fa4b8d57f53829c6b7c900e9867be9b931335c03c951a295b16c11800fcbd30a",
         x86_64_linux: "e3afbdb8990c5f2b566fee8d072de08d5010c979978540eda9d33608cee4b538"

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
