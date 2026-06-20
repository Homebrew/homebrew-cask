cask "atomcode" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "4.25.3"
  sha256 arm:          "b5d784db0f3328570aba77a910030fb2f99c8876b05183bdfb09c37f7e760fb5",
         intel:        "7e8f3ec78cec35bee11b6f93e04d2ca8883c5fbeec5e315493a40661cc12f0df",
         arm64_linux:  "e95c0960de80a1eb46a151ded917f64fbb71db8add4d9ba5101dd9b89d0a2242",
         x86_64_linux: "fe88ac17fe9c186e3b21be26b00456be586ed1eb479a2af94fed8a84f0e30b38"

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
