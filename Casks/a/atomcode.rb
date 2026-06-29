cask "atomcode" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "4.25.7"
  sha256 arm:          "dec961810c9b52eb0d0ed7efb0b1cb27c019a01da0e6c8402a9faf244a6f7124",
         intel:        "f2fc032843c1e320d0da2fcc4421e801badb6c561130aec4b02e17c314baf0df",
         arm64_linux:  "4a4c44899fcfe0234e4bcfab014ad74b7eb5d9bca10ed56799a60905ae350ff7",
         x86_64_linux: "9027a77225d3d39b7b9476a9298f6b9d8f230d46a2819fb85075dfe74077ec45"

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
