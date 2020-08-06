cask "sameboy" do
  version "0.13.5"
  sha256 "7a7a5ae968ab396f7b0781973833f87f6e37050eceab2e549428b0fb67f63f57"

  # github.com/LIJI32/SameBoy/ was verified as official when first introduced to the cask
  url "https://github.com/LIJI32/SameBoy/releases/download/v#{version}/sameboy_cocoa_v#{version}.zip"
  appcast "https://github.com/LIJI32/SameBoy/releases.atom"
  name "SameBoy"
  homepage "https://sameboy.github.io/"

  depends_on macos: ">= :sierra"

  app "SameBoy.app"
end
