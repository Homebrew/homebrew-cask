cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.25.1-0.20250917114012-d920e7d4f556"
  sha256 arm:          "e89dd6c69c243235a85250b02fd72dbc3f020e1945729cb37f09c5fe897a8fbf",
         intel:        "b04c1d61d0294901cac99a7baf1c4e3fae2df483d161ab223f48838336c43e28",
         arm64_linux:  "3a6755c4a941e604cb951253bfc505f5fa1e594949422bf5d5d643f0e08d9a6d",
         x86_64_linux: "9574b6a852859de37d72ef3e4be65e00e8462c7378a08ab91ff84c1af8390c85"

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
