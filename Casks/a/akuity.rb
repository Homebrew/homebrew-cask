cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.29.0-rc.1.0.20260424100956-84cc6da083dd"
  sha256 arm:          "9beee0bb460e675e2c50732641cd7248ed3f1438657c57c260e1c039609e6cf1",
         intel:        "26ab4a47255405df523ad0546e3ef8bf784fab56a91b36cbefb8456e8571dd92",
         arm64_linux:  "db8c719ae064b5c00641bcf6d6d9ea5eeec9ad38bed1d27e9406e21ea5b351a9",
         x86_64_linux: "5b2f1b7429d7993ac45eabbe4717937c27c8ba1a8e1434def323fee2f324cf11"

  url "https://dl.akuity.io/akuity-cli/v#{version}/#{os}/#{arch}/akuity"
  name "Akuity"
  desc "Management tool for the Akuity Platform"
  homepage "https://akuity.io/"

  livecheck do
    url "https://dl.akuity.io/akuity-cli/stable.txt"
    regex(/^v?(\d+(?:\.\d+)+(?:-rc(?:\.\d+)*)?(?:[._-]\d+(?:\.\d+)*)?(?:[_-]?\h+)?)$/i)
  end

  binary "akuity"

  zap trash: "~/.config/akuity"
end
