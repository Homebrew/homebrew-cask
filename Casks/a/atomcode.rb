cask "atomcode" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "4.24.0"
  sha256 arm:          "cc19e5c0beabf4d5079f89455f8c6bc23e8a397f5fccec48bb90c482ff7af028",
         intel:        "a8a7989cfc7dc8ef7bb1383e34e07c81a8cf65d70197a3db73038d542f40e3fc",
         arm64_linux:  "70b857471032cd0b95f4edfe967cd130094d84adff8942b625069e2f61f7801c",
         x86_64_linux: "4c09d1541d11ebf2b30d017ceacaf5228ce0118ba5e0f6d0491ac9ae9054f656"

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
