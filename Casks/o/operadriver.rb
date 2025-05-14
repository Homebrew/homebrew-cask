cask "operadriver" do
  version "134.0.6998.205"
  sha256 "fa89678c104e377594b322c8276e0993ed4622fae5f72c0be5899f16126257d7"

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
