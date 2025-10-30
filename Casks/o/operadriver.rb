cask "operadriver" do
  version "139.0.7258.156"
  sha256 "6126de9582ccadb988fa55e5eef8e405cd4af28ec56109cd7267a22c21fdfdb0"

  url "https://github.com/operasoftware/operachromiumdriver/releases/download/v.#{version}/operadriver_mac64.zip"
  name "OperaChromiumDriver"
  desc "Driver for Chromium-based Opera releases"
  homepage "https://github.com/operasoftware/operachromiumdriver"

  livecheck do
    url :url
    regex(/^v?\.?(\d+(?:\.\d+)+)$/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  binary "operadriver_mac64/operadriver"

  # No zap stanza required

  caveats do
    requires_rosetta
  end
end
