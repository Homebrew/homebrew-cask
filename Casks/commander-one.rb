cask "commander-one" do
  version "2.5"
  sha256 "40ca3e2ce1de3e8507b80c6f33a3fb289aa133ef13c2d74774f886199754e846"

  # cdn.electronic.us/ was verified as official when first introduced to the cask
  url "https://cdn.electronic.us/products/commander/mac/download/commander.dmg"
  appcast "https://cdn.electronic.us/products/commander/mac/update/settings.xml"
  name "Commander One"
  desc "Two-panel file manager"
  homepage "https://mac.eltima.com/file-manager.html"

  depends_on macos: ">= :yosemite"

  app "Commander One.app"
end
