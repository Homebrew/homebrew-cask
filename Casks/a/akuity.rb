cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.25.1-0.20250930013158-f8ac9108941c"
  sha256 arm:          "7893ff1a034296602ccfda1fb14fbc39cc6b191f80d2a81373d9eb27a1eb3c50",
         intel:        "9050041ca7d3f6c1a6df2b6c50f2e78e70ebcf25f10dd0e81523d9ee7b30e948",
         arm64_linux:  "5d024395ece9ebc9807954324e87dc81a7ef40655e584edb543427b3ec957db6",
         x86_64_linux: "acac1f719a29c208000aefa76590acd0b2468bb5916bb551a46d3528870beb0e"

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
