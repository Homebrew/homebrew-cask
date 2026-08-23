cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.33.0-rl.1.0.20260823052709-a9415213c4d7"
  sha256 arm:          "71ef9578e25ef5d0430648aba6ef4e6ec323a857de259e8627229fe6d1f93b2b",
         intel:        "81d50a7c99604b005abc812c4f1bcb60251b552384cd4f449b839d60e18206ae",
         arm64_linux:  "06bbec922bd63fa2a32113d00ef63466983189ed7383ef1f02a00fc42bec69c2",
         x86_64_linux: "40b959b881c409c49b9e87d6988c2e796ab79123eef218142024aff6c0d1e738"

  url "https://dl.akuity.io/akuity-cli/v#{version}/#{os}/#{arch}/akuity"
  name "Akuity"
  desc "Management tool for the Akuity Platform"
  homepage "https://akuity.io/"

  livecheck do
    url "https://dl.akuity.io/akuity-cli/stable.txt"
    regex(/^v?(\d+(?:\.\d+)+.*)$/i)
  end

  binary "akuity"

  zap trash: "~/.config/akuity"
end
