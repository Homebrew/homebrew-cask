cask "commander-one" do
  version "2.5.1"
  sha256 "40c2efa53c7f2e7e68484dcd366f355e88b85bc22c04a729872a8abc9fa88646"

  # cdn.electronic.us/ was verified as official when first introduced to the cask
  url "https://cdn.electronic.us/products/commander/mac/download/commander.dmg"
  appcast "https://cdn.electronic.us/products/commander/mac/update/settings.xml"
  name "Commander One"
  desc "Two-panel file manager"
  homepage "https://mac.eltima.com/file-manager.html"

  depends_on macos: ">= :yosemite"

  app "Commander One.app"
end
