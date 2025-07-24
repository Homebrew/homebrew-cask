cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.24.1-0.20250724174312-2140132cf3d7"
  sha256 arm:          "3b65c592c28ac9eda1e3b08f3c5a130a172837e7f0abb99c9aa2761cf73e19b2",
         intel:        "a5cfd6d60badf730d50c1bbd6fc1a90ce6e018a1800796d996ed1aca8d1852c5",
         arm64_linux:  "44d00e93372419fa16121d8a0e4a53800a7f3f235b2c4bfb081852b03306ce3b",
         x86_64_linux: "01b4ef462d9d937e983ecf0094bf0df65dcffcc2d1d2f752d85a04590f3bfb05"

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
