cask "nrfutil" do
  version "1.2.0-9ca8c73"
  sha256 "454fda3f1ee088f76aa57ac6f208d71d415d0ba3c1f7b88f5ca2347b10775048"

  url "https://developer.nordicsemi.com/.pc-tools/nrfutil/universal-osx/nrfutil-launcher-universal-apple-darwin-#{version}"
  name "nrfutil"
  desc "Unified CLI utility for Nordic Semiconductor products"
  homepage "https://www.nordicsemi.com/Products/Development-tools/nrf-util"

  livecheck do
    url "https://developer.nordicsemi.com/.pc-tools/nrfutil/universal-osx/"
    regex(/nrfutil-launcher-universal-apple-darwin[._-]v?(\d+(?:\.\d+)+(?:[._-]\h+)?)/i)
  end

  binary "nrfutil-launcher-universal-apple-darwin-#{version}", target: "nrfutil"
  # No zap stanza required
end
