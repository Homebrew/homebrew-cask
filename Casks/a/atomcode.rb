cask "atomcode" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "4.25.0"
  sha256 arm:          "0ae418fa3688b32fc90286a77a1f461ab91454b8205c35a18d86170a4c52c3a6",
         intel:        "2ed1118ea009e5d8fa48838d046762d6a73772e5b2df901d6c8de6da4ace0ab9",
         arm64_linux:  "06ffe4c80829dce45c721928b564dc5c45b0d2f50322b85489d8004e6b46ce10",
         x86_64_linux: "9c62bd7a418bf7b664c6651522d292b7bc2f8bf3423ed337a5bd99cfcaa4c677"

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
