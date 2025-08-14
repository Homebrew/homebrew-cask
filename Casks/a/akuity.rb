cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.24.1-0.20250813200219-f4511cd38b23"
  sha256 arm:          "8cefd05e1f9418a9a9a048954bed204e8c400d31e4e26787f7d212afa3ea8144",
         intel:        "9ff1fbb1bedb40b8592dfa34ff3e7cf9568d3a1fd69b9cd9a0cf8ad3815d9310",
         arm64_linux:  "08a28ff9cc1020ee3ee97a3a095b3e13b5fca6952fb16b496ecffadacea83c34",
         x86_64_linux: "e607860b2d6a1d672b13c19251e03508c6d67270dd281554114da5cc19f20616"

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
