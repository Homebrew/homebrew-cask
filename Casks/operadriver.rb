cask "operadriver" do
  version "90.0.4430.85"
  sha256 "6d4c0c0e19a9b361e114dbd854024b61bd852708850c7b582c5dc19248f4a200"

  url "https://github.com/operasoftware/operachromiumdriver/releases/download/v.#{version}/operadriver_mac64.zip"
  name "operachromiumdriver"
  desc "Driver for Chromium-based Opera releases"
  homepage "https://github.com/operasoftware/operachromiumdriver"

  livecheck do
    url :url
    strategy :git
    regex(/^v?\.?(\d+(?:\.\d+)*)$/i)
  end

  binary "operadriver_mac64/operadriver"
end
