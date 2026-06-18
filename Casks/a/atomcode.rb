cask "atomcode" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "4.25.2"
  sha256 arm:          "a033ae7f599609efcf6033109e53965427a59a735c445ea7cad7c8b78a7d23f5",
         intel:        "ebadd40a27566d48d82cec342717f34f1a2292e04be8c70d34a267c8a7e137a1",
         arm64_linux:  "9a9a912a393b34ef48e98dc1fc0db9ccc717fad5386bbcc1cb12c405fc6266c3",
         x86_64_linux: "fd9cd5ae68664556710cd6581310de55c810220b72508af2f2f56033fd515003"

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
