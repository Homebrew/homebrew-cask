cask "atomcode" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "5.2.4"
  sha256 arm:          "ef0cc2513633dc397d5ffa71de605c25e823e1b5f89ab7c365178c65f2d80e8f",
         intel:        "e0b75fe2a798ec79236242c1a9d7c53a58b1d9bcbe5b36648cd21f877e6007b4",
         arm64_linux:  "08d15ad1658fe7c065658e80abf55dc96be38584c291eb9443a2a22176085d04",
         x86_64_linux: "24afa7e883511bfa3f5f6819f089950c241d425e24f982b4fe44665960f8385d"

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
