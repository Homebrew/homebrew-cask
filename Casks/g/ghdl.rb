cask "ghdl" do
  macos_version = nil
  version "5.1.1"

  on_ventura :or_older do
    macos_version = 13
    arch arm: "x86_64", intel: "x86_64"

    sha256 "4c35a9d6028d11cbfc7b2a98e0cdb28a56e268e5f586d7246904fec40bc8193a"

    caveats do
      requires_rosetta
    end
  end
  on_sonoma :or_newer do
    arch arm: "aarch64", intel: "x86_64"

    on_arm do
      on_sonoma do
        macos_version = 14

        sha256 "e858a3ee3cee22c976354ee7a66ab6377beec1a9383462f0ba583a8df73f46c1"
      end
      on_sequoia :or_newer do
        macos_version = 15

        sha256 "0445652a460d01ab94d3a95fa88f398ae9550973daf5873f66c2480d2c73e209"
      end
    end
    on_intel do
      macos_version = 13

      sha256 "4c35a9d6028d11cbfc7b2a98e0cdb28a56e268e5f586d7246904fec40bc8193a"
    end
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

  depends_on macos: ">= :ventura"

  directory = "ghdl-llvm-#{version}-macos#{macos_version}-#{arch}"

  ghdlbins = ["ghdl", "ghwdump", "ghdl1-llvm"]
  ghdlbins.each do |bin|
    binary "#{directory}/bin/#{bin}"
  end

  binary "#{directory}/include/ghdl", target: "#{HOMEBREW_PREFIX}/include/ghdl"
  binary "#{directory}/lib/ghdl", target: "#{HOMEBREW_PREFIX}/lib/ghdl"

  # No zap stanza required
end
