cask "atomcode" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "5.2.1"
  sha256 arm:          "3b81a3a478a21122aaf10c6ce6b4e0ae722d4589eb16978328e5e9b9106c45e2",
         intel:        "7143a03ce091069c041ce22d7127468867678ac94a255db5a4d204a1f4d64c65",
         arm64_linux:  "edd580efafac27972ca714302eeed75723176a2b7cdf0b3e74815cccf55c58b6",
         x86_64_linux: "34f6c830608485a4cd98f2a0d2081be671b1311a602694f2733997cda0db4b1f"

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
