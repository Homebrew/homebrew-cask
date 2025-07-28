cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.24.1-0.20250728142229-a18e5474afb6"
  sha256 arm:          "dc89decc685f4c75043f4f7421fb9de2f081c4ca00cecbd7993fc20fada64944",
         intel:        "b2a6b07515280f9dc4fcfd5bae7fd84627a76fd92851e17c7dc9fc2154cdfff4",
         arm64_linux:  "98ad47af414939fc7d6f06241090a66f0d0a92cdb1635e73ae2a0a6640539258",
         x86_64_linux: "c98cfd4c062a142c9b4f2aba6f342c408b8a69e1246ba7c384624ac9cd8023c1"

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
