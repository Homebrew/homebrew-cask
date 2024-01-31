cask "nrfutil" do
  version "1.0.0-60fe18a"
  sha256 "229af1183c16cef8e18554ef3a922cb56f16eb7ee8dce76d16a0ace94e7fc6d1"

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
