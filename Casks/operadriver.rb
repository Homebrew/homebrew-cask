cask "operadriver" do
  version "104.0.5112.81"
  sha256 "222f813f2a440729e4058dba98812460c9c20d6f0037b8b415c0d9601f516bec"

  url "https://github.com/operasoftware/operachromiumdriver/releases/download/v.#{version}/operadriver_mac64.zip"
  name "OperaChromiumDriver"
  desc "Driver for Chromium-based Opera releases"
  homepage "https://github.com/operasoftware/operachromiumdriver"

  livecheck do
    url :url
    regex(/^v?\.?(\d+(?:\.\d+)+)$/i)
  end

  binary "operadriver_mac64/operadriver"
end
