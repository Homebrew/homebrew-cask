cask "operadriver" do
  version "89.0.4389.82"
  sha256 "b034dd237e7708842ae7ffb1f315cc0ddc0d88fdb4fce22684695a3257dc3db5"

  url "https://github.com/operasoftware/operachromiumdriver/releases/download/v.#{version}/operadriver_mac64.zip"
  name "operachromiumdriver"
  homepage "https://github.com/operasoftware/operachromiumdriver"

  livecheck do
    url :url
    strategy :git
    regex(/^v?\.?(\d+(?:\.\d+)*)$/i)
  end

  binary "operadriver_mac64/operadriver"
end
