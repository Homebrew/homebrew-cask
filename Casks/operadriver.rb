cask "operadriver" do
  version "88.0.4324.104"
  sha256 "570b707484fb7ed674959da858b22d83ccea83cd03f487a9c023508201bd3db0"

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
