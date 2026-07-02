cask "atomcode" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "4.25.8"
  sha256 arm:          "198e05a4d3a9a0a49bd10a1bd9bbf7091f125948f7a0b713607ea17fa420b985",
         intel:        "98bd1bf7caa85519873aad9819fda4ad4b79852c30ee8f2929ae653746e25fba",
         arm64_linux:  "deef39ffa0cf859d9b80d3e0d119e0473026e55179626ed9865b9ec1e269c806",
         x86_64_linux: "c795e8ebd3423dae5a3fca965e6d6e6e872c15e83b41f2e04bad62d31924431c"

  url "https://atomgit.com/atomgit_atomcode/atomcode/releases/download/v#{version}/atomcode-v#{version}-#{os}-#{arch}.tar.gz"
  name "AtomCode"
  desc "Open-source terminal AI coding agent"
  homepage "https://atomgit.com/atomgit_atomcode/atomcode"

  livecheck do
    url "https://atomgit.com/atomgit_atomcode/atomcode.git"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :git
  end

  binary "atomcode"

  zap rmdir: "~/.atomcode"
end
