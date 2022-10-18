cask "operadriver" do
  version "105.0.5195.102"
  sha256 "8a784fb10deaf7e0be1fe9c50b6435438b6d9e8b171ab323f4b72ff0d850ea20"

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
