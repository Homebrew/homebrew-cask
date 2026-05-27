cask "atomcode" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "4.23.1"
  sha256 arm:          "f094b5b59d938ac542f7e3abf57b4b5684eb6c15e2f591148288b77a04ff6f1c",
         intel:        "91bd40eef18a18912293fed9423777f500fe2ad7330a3827578c25e6355bd5e9",
         arm64_linux:  "9b66851888c74d489146b28624d6191e43484f5e79fb9ed2d2428953f5b5a91e",
         x86_64_linux: "f01730e6d83815bb42279d77979260dd6faee3a970f5218f13b4740c1b7a4787"

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
