cask "operadriver" do
  version "121.0.6167.140"
  sha256 "52fcb08b0f25b549a865ad545ac7ae3e7af6c062cf6edcde15fa0c25a1bdef7b"

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
