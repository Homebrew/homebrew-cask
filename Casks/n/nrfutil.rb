cask "nrfutil" do
  version "1.2.3-e0abdbe"
  sha256 "726c8e6e4cb5e0811f342620f88472351b1203f2af8e27b744e653f34a08deb4"

  url "https://files.nordicsemi.com/artifactory/swtools/external/nrfutil/executables/universal-apple-darwin/nrfutil-universal-apple-darwin-#{version}"
  name "nrfutil"
  desc "Unified CLI utility for Nordic Semiconductor products"
  homepage "https://www.nordicsemi.com/Products/Development-tools/nrf-util"

  livecheck do
    url "https://files.nordicsemi.com/artifactory/swtools/external/nrfutil/executables/universal-apple-darwin/"
    regex(/nrfutil-universal-apple-darwin[._-]v?(\d+(?:\.\d+)+(?:[._-]\h+)?)/i)
  end

  binary "nrfutil-universal-apple-darwin-#{version}", target: "nrfutil"
  # No zap stanza required
end
