cask "nrfutil" do
  version "1.4.2-8a9090a"
  sha256 "1c65d4095ba28c1e1a65dbe85e79bf91c36efab8dc2b28c1d8005c98bb37242b"

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

  zap :not_required
end
