cask "atomcode" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "4.25.1"
  sha256 arm:          "7702b663270e580efa14af4d128a2725a759f93e0c85d4c8cec65c87de52e2b6",
         intel:        "b52990ab717cd102c50e2fa8b97aa6dfda7deb3e4a67ecf4c495a1f47a52cc77",
         arm64_linux:  "dc096a343b5c64d67cd57adfe8630359193816fd8d87307347f887105b383711",
         x86_64_linux: "d510a3ebd3e08506fccd24af469e6af50a52a6d28f738dca83b4081dcc34cc8d"

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
