cask "commander-one" do
  version "2.5.2"
  sha256 "c4effe19cf19fb7f073cc5acf3f50363184acc5ac75b2a7106a0f3e9c554d87e"

  # cdn.electronic.us/ was verified as official when first introduced to the cask
  url "https://cdn.electronic.us/products/commander/mac/download/commander.dmg"
  appcast "https://cdn.electronic.us/products/commander/mac/update/settings.xml"
  name "Commander One"
  desc "Two-panel file manager"
  homepage "https://mac.eltima.com/file-manager.html"

  depends_on macos: ">= :yosemite"

  app "Commander One.app"
end
