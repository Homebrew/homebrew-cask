cask "atomcode" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "4.24.2"
  sha256 arm:          "e39e4dc2babf98855c717bb774c82c8540579b26274d730db6f988e9fff158bf",
         intel:        "5d00c493d08daa63083ed0c31c85cda39f5cad46e05aa810a6e6b6fc9eb4c581",
         arm64_linux:  "bfd902b92d2e903baf222481d863ce73e8fa957e1c155d0b0eb077c955d40616",
         x86_64_linux: "e0031a80b4ce8de200d952ebd684e51631ddcd58510b2506be79ff739167e44a"

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
