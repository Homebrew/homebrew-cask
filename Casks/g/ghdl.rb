cask "ghdl" do
  macos_version = nil

  on_ventura :or_older do
    macos_version = 13
    arch arm: "x86_64", intel: "x86_64"

    version "5.1.1"
    sha256 "4c35a9d6028d11cbfc7b2a98e0cdb28a56e268e5f586d7246904fec40bc8193a"

    livecheck do
      skip "Legacy version"
    end

    caveats do
      requires_rosetta
    end
  end
  on_sonoma :or_newer do
    arch arm: "aarch64", intel: "x86_64"

    on_arm do
      version "6.0.0"

      on_sonoma do
        macos_version = 14

        sha256 "9cb3ccc09ca95f37c88bb757b3da7415ce5efede51e136e0262c74f3f99c2245"
      end
      on_sequoia :or_newer do
        macos_version = 15

        sha256 "69beb5913a490b5971980bd045af6a63b6f52e861b444fa990bffac436587478"
      end

      livecheck do
        url :url
        strategy :github_latest
      end
    end
    on_intel do
      macos_version = 13

      version "5.1.1"
      sha256 "4c35a9d6028d11cbfc7b2a98e0cdb28a56e268e5f586d7246904fec40bc8193a"

      livecheck do
        skip "Legacy version"
      end
    end
  end

  url "https://github.com/ghdl/ghdl/releases/download/v#{version}/ghdl-llvm-#{version}-macos#{macos_version}-#{arch}.tar.gz",
      verified: "github.com/ghdl/ghdl/"
  name "ghdl"
  desc "VHDL 2008/93/87 simulator"
  homepage "https://ghdl.github.io/ghdl/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

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
