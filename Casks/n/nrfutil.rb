cask "nrfutil" do
  version "1.4.1-f15ff58"
  sha256 "866a0d9e6c8b7b3d46b219caa71e485b26bad3f53c9ba7c06d9665620f35b394"

  url "https://files.nordicsemi.com/artifactory/swtools/external/nrfutil/executables/universal-apple-darwin/nrfutil-universal-apple-darwin-#{version}"
  name "nrfutil"
  desc "Unified CLI utility for Nordic Semiconductor products"
  homepage "https://www.nordicsemi.com/Products/Development-tools/nrf-util"

  livecheck do
    url "https://files.nordicsemi.com/artifactory/swtools/external/nrfutil/executables/universal-apple-darwin/"
    regex(/nrfutil-universal-apple-darwin[._-]v?(\d+(?:\.\d+)+(?:[._-]\h+)?)/i)
  end

  depends_on :macos

  binary "nrfutil-universal-apple-darwin-#{version}", target: "nrfutil"
  # No zap stanza required
end
