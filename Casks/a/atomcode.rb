cask "atomcode" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "5.2.2"
  sha256 arm:          "58a32c3bc6e31e9289260d4d5bb10cd9cd714d28a028a3e58a3162e1c57ff1fd",
         intel:        "a31d7d4f995a07a9049d761db37ae6c2c2914f5b390d623fc18c17bf0b296030",
         arm64_linux:  "26bb7373aa9ccc9d1c49e711c9f779ccecf82122fb6ea054c3e18a358cf4d4b9",
         x86_64_linux: "7ff472129eb7fcc6af8ad807009634d47d2591c79fbd71e5e78072e2dce18b3f"

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
