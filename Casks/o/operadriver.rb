cask "operadriver" do
  version "130.0.6723.137"
  sha256 "8e13bf9dbd49ca92e5c647f5e68f812c1f244ad56f60e48af4ef78cf9b17bc85"

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
