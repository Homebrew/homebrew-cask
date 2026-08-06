cask "atomcode" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "5.0.5"
  sha256 arm:          "60181fb45ec8ad40c4327b1303ce846b002b7aa160e9ee84ddc00f57da11054c",
         intel:        "5ad4db6a6e42f0486ea2e98724bc89e5b4848c2d223ce2aec16d54a262ab8ff3",
         arm64_linux:  "dc2f9b00d786c5731647beb8f8c016aa8f83619f95fdf1c0c1260522b431c6c4",
         x86_64_linux: "85ca2288a1ef92d377904d7523625dfe265347f07fadebe2a05cbb4fa65ebb9c"

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
