cask "atomcode" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "5.0.2"
  sha256 arm:          "0ad6ca0c7dca0e236861ad5f061aae6b548f37ed3769ba827afa1b5022dc2956",
         intel:        "1e7b05a9a59b962aad862d39417e826bea637b4289f8dd246b13d1cd72917d6a",
         arm64_linux:  "18561292e9313cbfe8d7bdfb606ec1eb88675a50e5073a11241ad6adf5b57e42",
         x86_64_linux: "3f2899f4c3c4be36afa820dc2c5e2a401754ccd34f25d58f6c8b407e2149c228"

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
