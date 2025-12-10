cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.26.2-0.20251209211831-74ef27aa4340"
  sha256 arm:          "5bacb5beb691b3050210b425902b7ecf21f79606b25b08389496c398481aeb90",
         intel:        "e25970db0d9f19dfcee2c44b18848abede8e4570855b388bbc67f8bf518bb423",
         arm64_linux:  "6d34579f3f4dc270fdbe284e9807b46ba0a888bf7f2992727ffd7d6d09081a93",
         x86_64_linux: "c215a186b4b99f7f9203f33c9db5c4c382626f05039fd5f21b53d4df73d6d914"

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
