cask "operadriver" do
  version "142.0.7444.243"
  sha256 "204c6f4272957da6c772487d409ccfe6ea16f1fb86fc47759110784eec9637fc"

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
