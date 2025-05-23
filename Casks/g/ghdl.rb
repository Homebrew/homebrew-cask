cask "ghdl" do
  arch arm: "aarch64", intel: "x86_64"

  macos_version = nil

  version "5.0.1"

  on_arm do
    on_sonoma :or_older do
      macos_version = 14

      sha256 "47e9cb8f9d3306e9a896971b2a0acef13776e5b98d71745a2e61d5732d5ec964"
    end
    on_sequoia :or_newer do
      macos_version = 15

      sha256 "efc688710c220bd7a89735e99455531f9b2867319dc0dafa90814e301c555086"
    end
  end
  on_intel do
    macos_version = 13

    sha256 "176f58857caca8039215f9ead3c92b5ce0558a0434152957ca2b219d5b966443"
  end

  url "https://github.com/ghdl/ghdl/releases/download/v#{version}/ghdl-llvm-#{version}-macos#{macos_version}-#{arch}.tar.gz",
      verified: "github.com/ghdl/ghdl/"
  name "ghdl"
  desc "VHDL 2008/93/87 simulator"
  homepage "https://ghdl.github.io/ghdl/"

  livecheck do
    url :url
    strategy :github_latest
  end

  directory = "ghdl-llvm-#{version}-macos#{macos_version}-#{arch}"

  ghdlbins = ["ghdl", "ghwdump", "ghdl1-llvm"]
  ghdlbins.each do |bin|
    binary "#{directory}/bin/#{bin}"
  end

  binary "#{directory}/include/ghdl", target: "#{HOMEBREW_PREFIX}/include/ghdl"
  binary "#{directory}/lib/ghdl", target: "#{HOMEBREW_PREFIX}/lib/ghdl"

  # No zap stanza required
end
