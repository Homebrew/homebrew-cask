cask "operadriver" do
  version "124.0.6367.62"
  sha256 "f5e4a368c32d3ce98fb4b02075aa83b18df51ffd39f4a3d65412f3b7f81bb327"

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
end
