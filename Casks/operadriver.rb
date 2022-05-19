cask "operadriver" do
  version "100.0.4896.127"
  sha256 "6e871550e39158639df271b9aa2afa06b70a5b183514b04b665da2b5e9e18b0b"

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
