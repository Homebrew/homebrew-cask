cask "atomcode" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "5.0.8"
  sha256 arm:          "203c3089ca8a5d3e9cad0e4ab0316c06910ba3550e7fbf640ff386e9667bf8cb",
         intel:        "57287824ab345d0ceab3921a3a4e6929c49e1cf0350d39763481266a0570056b",
         arm64_linux:  "0f837d73e683f78746075a828596ae7938bc9b86924e65758dfee6ad02958039",
         x86_64_linux: "89ad22e81eaa1f712c48ae59009a1840d851e288e46829bbcba26604ef894f6b"

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
