cask "atomcode" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "4.25.5"
  sha256 arm:          "eb078f50d014aed2da18e57f3555ae9e2974d5574510610a3f8c2e07e5b58f42",
         intel:        "c66a2f85c8e5ccd935fedc22880011c659e3a774c0919c9195e32caafb6e56c7",
         arm64_linux:  "b7d55c583ccdbf74835a7773fbcf1758d6f69de3646450f9e4241413b6f6b7fa",
         x86_64_linux: "c528177c913689de4406d4ad1bb6ed65c745db62263a0446827bd8b260f9f55a"

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
