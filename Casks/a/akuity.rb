cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.24.1-0.20250818103706-5b423841b832"
  sha256 arm:          "3cc170c98ede8cf7c24c91d231703b93caabad497c3bfa5504509a641877049a",
         intel:        "d976cfc0da3f66d11ec4af379e64b3b61e26adc0c9cafad97ec0ae993a70701a",
         arm64_linux:  "84496d2be51ccc4d5e1188a634d1d42977a0803bd1d2ba7a622786b0de34bd12",
         x86_64_linux: "8c70a35d414173c4570bd035df22a556e95f25cb450cd5f89c6ecdd97105a5f0"

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
