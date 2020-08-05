cask "sameboy" do
  version "0.13.4"
  sha256 "c471a016e22f33f4ec2dad23a9122182d53eb331402c099b7ffd497fe5bb222e"

  # github.com/LIJI32/SameBoy/ was verified as official when first introduced to the cask
  url "https://github.com/LIJI32/SameBoy/releases/download/v#{version}/sameboy_cocoa_v#{version}.zip"
  appcast "https://github.com/LIJI32/SameBoy/releases.atom"
  name "SameBoy"
  homepage "https://sameboy.github.io/"

  depends_on macos: ">= :sierra"

  app "SameBoy.app"
end
