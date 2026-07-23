cask "atomcode" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "5.0.1"
  sha256 arm:          "e18a172273860539a7746fbb042a8cab292faaaba0944d6c51200d6747124f07",
         intel:        "a6129dff598832c0ccf0be2b3e691214569bc9afa2dec44a9676622f012f7f18",
         arm64_linux:  "70cda8affc309b86552353862b297e4fe280badb36b2f3b06b883e5a60cf29d4",
         x86_64_linux: "4755db0762aa67c5fb0e9f55a6f8c8f7a00597aab2acae086f8a12be9dd5ea93"

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
