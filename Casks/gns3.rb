cask "gns3" do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version "2.2.12"
  sha256 "ab3fe13128bb85676e14d19a6236d2972f6c0a45353d89b5795540aa1c97cc1a"

  # github.com/GNS3/gns3-gui/ was verified as official when first introduced to the cask
  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  appcast "https://github.com/GNS3/gns3-gui/releases.atom"
  name "GNS3"
  homepage "https://www.gns3.com/"

  depends_on macos: ">= :high_sierra"

  app "GNS3.app"
end
