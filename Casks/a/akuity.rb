cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.28.1-0.20260305044940-645aad8ba41c"
  sha256 arm:          "e35f4823fdfc27f3b30d18181cd256fbad2a31a5aadfef015e1d55fd9b2c9756",
         intel:        "f591d91c61fad111ef881d4e280db9af4b025a9e22be41448d7d0117bf520278",
         arm64_linux:  "98674c598594f82b8820198e3e40751add008092db2e42d25c7435c7265370b7",
         x86_64_linux: "b900fe0af9ce8a98113182153893279ed77370cdb4ddda76073384d574d4c3b3"

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
