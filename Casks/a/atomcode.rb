cask "atomcode" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "5.0.0"
  sha256 arm:          "0066021cb176a5cfe4833bce3c9f9906870c5e47d1158615508ef4f6f28e175b",
         intel:        "39f36d0a7d554e0477f94a9154ee147afb7f40e1572d8edbd8d8b4c96e12cd54",
         arm64_linux:  "0b52cfe73545250d295860f1e7ed9784866c81163cf9b8a30e9e59ba73b908b7",
         x86_64_linux: "da2ac7542773d4ec384375a17025befd320c7dabcf7195001b26e9d445f9abb5"

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
