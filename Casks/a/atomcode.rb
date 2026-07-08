cask "atomcode" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "4.26.0"
  sha256 arm:          "dc25b657d09ce17d9ea3ebabf71c50f1fff463c326bdfb281a0fe1cc6c643614",
         intel:        "6bc83604e2d86d62847bd481398926b339019389975e461f7d5fcef32d35e00c",
         arm64_linux:  "b379487d3c6c5b97f45a1c6a40212ca809d7d9ab3e8a47c34301b5c832d3ec04",
         x86_64_linux: "bdd6d53efb2817d0f3f536de8bf8f4c81f2980f3955d78865bdc204d8a0db5dd"

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
