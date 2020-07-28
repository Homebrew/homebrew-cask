cask "operadriver" do
  version "78.0.3904.87"
  sha256 "04ce1c879266e8b1acfdded0de02b3b810da1d13514ccc8891628dbc349605a6"

  url "https://github.com/operasoftware/operachromiumdriver/releases/download/v.#{version}/operadriver_mac64.zip"
  appcast "https://github.com/operasoftware/operachromiumdriver/releases.atom"
  name "operachromiumdriver"
  homepage "https://github.com/operasoftware/operachromiumdriver"

  binary "operadriver_mac64/operadriver"
end
