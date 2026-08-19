cask "atomcode" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "5.0.7"
  sha256 arm:          "dadd12f05c18c5c481d35655ccf344a41db96052476931b8a8d7493be332d699",
         intel:        "8dedeca5d4ffba75adde3bcd5fe32675343e47420dc37be6c23279ce8c161a03",
         arm64_linux:  "96f7f91dd72e2d9555b2ef4a6009234a814131584ca8ba106e5fb9825b44b2c0",
         x86_64_linux: "ad982bbc75f5b13bc6ece44db4e8e5319632f9abadbfde814415f38eb6e8dae3"

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
