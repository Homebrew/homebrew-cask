cask "openrct2" do
  version "0.3.1"
  sha256 "deda4739aa1f4933bc56bba6b65c23a1268a7f299e5cff51862ed0a1dfdcd045"

  # github.com/OpenRCT2/OpenRCT2/ was verified as official when first introduced to the cask
  url "https://github.com/OpenRCT2/OpenRCT2/releases/download/v#{version}/OpenRCT2-#{version}-macos-x86-64.zip"
  appcast "https://github.com/OpenRCT2/OpenRCT2/releases.atom"
  name "OpenRCT2"
  desc "Open-source re-implementation of RollerCoaster Tycoon 2"
  homepage "https://openrct2.io/"

  depends_on macos: ">= :high_sierra"

  app "OpenRCT2.app"
end
