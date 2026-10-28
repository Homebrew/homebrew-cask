cask "atomcode" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "5.2.5"
  sha256 arm:          "1f0a98a69c66e68af4c52659379e8526a3c2cc65886c4a2c40979d19f022a5bc",
         intel:        "236ffdef6f4ace04c749df0c0b24cefe43dd3fe5a6b198107272f3aaca9bc9a4",
         arm64_linux:  "a29f3f9bde7be0c175c5b3cf670fa3617f2134ed21d625a7984483d81f4990d0",
         x86_64_linux: "84999ab24ed86ea4977fd09eb13a07c854936e53373014e4142a8087511c2af0"

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
