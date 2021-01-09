cask "operadriver" do
  version "87.0.4280.67"
  sha256 "e8a00acde0329895dfba4d241143c863c09785af0ca612d0ec12a31a3e4acc2a"

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
