cask "atomcode" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "4.25.4"
  sha256 arm:          "ba0d81318100f17d9b0e9afc6fff6a1987b3f44704f38bf4104a288f29b3bd09",
         intel:        "ec1311cdbb5ad717e2772f0525e0a216a9b9bff074df6cfe78964ec6dc60e8df",
         arm64_linux:  "f55b5c310985f66a8c3bbaa7f55917612ac74d686169bcedd900dbdc80df75a1",
         x86_64_linux: "333380111ab7743247540980b2d80a5e4da549e3f241a215ba72cee6c419e36f"

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
