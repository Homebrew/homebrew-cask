cask "atomcode" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "5.0.9"
  sha256 arm:          "41ffdd66a16d1e51b6249d99841f95fa856dfe275a2cc5f5408c6e0df8179a90",
         intel:        "fd6600416397f1ad570b8ed9ad996a16e50c7cb31b4b41c22392595f5b560dea",
         arm64_linux:  "4dc05a25008162b88cf48a412db5e012bea821aa1035a72497d88bc48509824c",
         x86_64_linux: "ca5d51ef0fb622c114e7c0a14af107d3194bc313d432730fd81cf1e1ba43cb20"

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
