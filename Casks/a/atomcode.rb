cask "atomcode" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "4.23.3"
  sha256 arm:          "a63a30bc38ddfaf014fcfe86319449cbfaef7def8c8289b09682d4aee97edfa9",
         intel:        "0d3dcd22c77b06f8c910115b69412f4b09e8b621b74d3ae14d56aa5d44f8fc03",
         arm64_linux:  "81650daff25dd7143fe48f62dbe810859c5a4892445f90b6edd3d3bdac317ad4",
         x86_64_linux: "fcf415689feffc4ec976e4745e38808683e8d67b8010ae8321b2970921df72f6"

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
