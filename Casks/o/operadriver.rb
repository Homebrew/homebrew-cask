cask "operadriver" do
  version "128.0.6613.162"
  sha256 "bca1b74ab5ed6396c039cea9bb31e9c3442c33e424b0e0d1619093501aa2b97d"

  url "https://github.com/operasoftware/operachromiumdriver/releases/download/v.#{version}/operadriver_mac64.zip"
  name "OperaChromiumDriver"
  desc "Driver for Chromium-based Opera releases"
  homepage "https://github.com/operasoftware/operachromiumdriver"

  livecheck do
    url :url
    regex(/^v?\.?(\d+(?:\.\d+)+)$/i)
  end

  binary "operadriver_mac64/operadriver"

  # No zap stanza required

  caveats do
    requires_rosetta
  end
end
