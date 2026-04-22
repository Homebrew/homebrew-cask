cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.29.0-rc.1.0.20260422053533-df31b07a4e7b"
  sha256 arm:          "29245478f3874f14a4d73e8d80d386a94419fc9d103f5e1bc1b8bc9c82e63109",
         intel:        "a781ac13e78ed27c68fb2b29d268d79e07fd2ec831022dd1340c17a47d80fca5",
         arm64_linux:  "d082148d49f760f83327f1b6d732cb0e23d775274da63dd9acf250031d7095c1",
         x86_64_linux: "5759122d837ee5bda3fbfbb6cbeeda22cbf5935c91a2832b609a649014393c13"

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
