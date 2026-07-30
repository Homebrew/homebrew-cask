cask "atomcode" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "5.0.3"
  sha256 arm:          "90fda2b9b53fa9e65803d78f8bbb477b61b330b3d56a5babb2c19b8d5642ebc6",
         intel:        "2e13b385dd42783847cf12fb3e83166235df31f285fd239fcbc86b7034f15010",
         arm64_linux:  "ad54eb6c39bd8cd4d38388e8a4430d42254d0973f0704f69729492d9fca4611b",
         x86_64_linux: "202d63593a21c6b33b058be9272b23f41c4f37fbcb532c136561f711cfbb4e3f"

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
