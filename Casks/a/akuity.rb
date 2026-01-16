cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.26.2-0.20260116180725-a0e80213f416"
  sha256 arm:          "0568cd3db0bd5602278b6e0f05acab61b310d6003eea349c235c322071d046e6",
         intel:        "e57c72c16bafb9180af7167d3b02780e9f33514ac16eabb6c7c0db512050d579",
         arm64_linux:  "a70ca527dfc2953beb5e5ac74c67c127be8f8507f71501126329fa91940d6db5",
         x86_64_linux: "098ecb5c53b57fc4da85e5b5dd2b400c0653262f3784e2cd51ba27c0f4b0dce4"

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
