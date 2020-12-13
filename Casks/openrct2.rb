cask "openrct2" do
  version "0.3.2"
  sha256 "ff03b02b585c1deb669e5800f10c83789bd3d23fdd7a126a49c897db1d8f859a"

  url "https://github.com/OpenRCT2/OpenRCT2/releases/download/v#{version}/OpenRCT2-#{version}-macos-x86-64.zip",
      verified: "github.com/OpenRCT2/OpenRCT2/"
  appcast "https://github.com/OpenRCT2/OpenRCT2/releases.atom"
  name "OpenRCT2"
  desc "Open-source re-implementation of RollerCoaster Tycoon 2"
  homepage "https://openrct2.io/"

  depends_on macos: ">= :high_sierra"

  app "OpenRCT2.app"
end
