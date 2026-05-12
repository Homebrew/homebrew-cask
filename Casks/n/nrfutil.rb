cask "nrfutil" do
  version "1.4.0-5515776"
  sha256 "f547eec13694d04a6463066122f002029a76c709785940afc622e73e46b21cce"

  url "https://files.nordicsemi.com/artifactory/swtools/external/nrfutil/executables/universal-apple-darwin/nrfutil-universal-apple-darwin-#{version}"
  name "nrfutil"
  desc "Unified CLI utility for Nordic Semiconductor products"
  homepage "https://www.nordicsemi.com/Products/Development-tools/nrf-util"

  livecheck do
    url "https://files.nordicsemi.com/artifactory/swtools/external/nrfutil/executables/universal-apple-darwin/"
    regex(/nrfutil-universal-apple-darwin[._-]v?(\d+(?:\.\d+)+(?:[._-]\h+)?)/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  binary "nrfutil-universal-apple-darwin-#{version}", target: "nrfutil"
  # No zap stanza required
end
