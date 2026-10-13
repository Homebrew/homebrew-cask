cask "atomcode" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "5.2.3"
  sha256 arm:          "507171b52b9d280b22429c9d30c33dd75d4cbc767f458e6edf713a4153749b91",
         intel:        "dbb2a472ee6d18aa700d6993fd1dc9dcf99b9e340bba6e1b50ff90e017fe1aa2",
         arm64_linux:  "db1ffabf90d1a79fd72bafda6054be93d678ba39799df906cd4f3b13a8a16c5e",
         x86_64_linux: "d5e0d84547fbbf4f6d8ad0d20d161916101f9d0ba59470cb49d51fe4540d9623"

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
