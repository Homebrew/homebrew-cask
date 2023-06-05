cask "ghdl" do
  arch arm: "llvm", intel: "mcode"

  version "3.0.0"
  sha256 arm:   "cb8c6ad3e6763e7c346ccee111daf761416c7d54ac0704f8a2560641fc3c2d85",
         intel: "4fabe56ecb5affa39ebc5a7de5de43eb020b1cc3c0ab3ff1bc4354505cd4ee8e"

  url "https://github.com/ghdl/ghdl/releases/download/v#{version}/ghdl-macos-11-#{arch}.tgz"
  name "ghdl"
  desc "VHDL 2008/93/87 simulator"
  homepage "https://github.com/ghdl/ghdl/"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "bin/ghdl"

  # No zap stanza required
end
