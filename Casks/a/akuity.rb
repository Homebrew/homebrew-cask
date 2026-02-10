cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.27.2-0.20260210055402-ccc7034df44f"
  sha256 arm:          "8cb96e788671fe89a7cf4f4b69d2bf2f65dd154763a7af1a70d44dac47651071",
         intel:        "161f1040686554b84c93735f7834cb4422a2dbc92f58f91075e5d53145f26589",
         arm64_linux:  "74500852c1b4c9ed11a5c7e183a9916cb2b04c84de0da5574abb140103209ddb",
         x86_64_linux: "2cebed28f5b365558f73206397dbb078d5cec0b7a8292eabc465618a44ee4e11"

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
