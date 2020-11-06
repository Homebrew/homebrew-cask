cask "beoplay-software-update" do
  version "1.0.6"
  sha256 "7e0500f935557f34d46625e4abe7081cdaa343558a973d3284000ab4c37b21a6"

  # bangolufsenassistentgohe.blob.core.windows.net/ was verified as official when first introduced to the cask
  url "https://bangolufsenassistentgohe.blob.core.windows.net/manuals/APPS%20AND%20ACCESSORIES/BEOPLAY%20SOFTWARE%20UPDATER/beoplay-software-updater-#{version.dots_to_hyphens}-mac%20(5).dmg"
  appcast "https://bang-olufsen.zendesk.com/hc/en-us/articles/360041405132-beoplay-software-updater",
          must_contain: version.dots_to_hyphens
  name "Beoplay Software Update"
  desc "Software updater for Beoplay products"
  homepage "https://www.bang-olufsen.com/en/product-support/accessories/beoplay-software-updater"

  app "Beoplay Software Update.app"
end
