cask "openrct2" do
  version "0.3.0"
  sha256 "1f8afb192678245c44df831b5af57af85d66deec6ccacbf464fb3928cf9a4c0f"

  # github.com/OpenRCT2/OpenRCT2/ was verified as official when first introduced to the cask
  url "https://github.com/OpenRCT2/OpenRCT2/releases/download/v#{version}/OpenRCT2-#{version}-macos-x86-64.zip"
  appcast "https://github.com/OpenRCT2/OpenRCT2/releases.atom"
  name "OpenRCT2"
  desc "Open-source re-implementation of RollerCoaster Tycoon 2"
  homepage "https://openrct2.io/"

  depends_on macos: ">= :mojave"

  app "OpenRCT2.app"
end
