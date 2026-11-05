cask "atomcode" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "5.2.6"
  sha256 arm:          "1528c5aeda1b72c0f51bc95c25502d634eaf10f2378745f15c376740257e3eb9",
         intel:        "e0b2114975b60b359022f3eeece02f1c2a3e351ef925a6e6b05caf3a57d68ec2",
         arm64_linux:  "c1ba4081982d0e39b7d08a0d784e975654104fe7f93ff6c30e802d902fedef20",
         x86_64_linux: "c9658f1ece47de0eef4d4f5094732125e552b4295c47dbe4a77611fa060a77b2"

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
