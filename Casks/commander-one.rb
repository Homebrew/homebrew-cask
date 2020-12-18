cask "commander-one" do
  version "2.5.2,3329"
  sha256 :no_check

  url "https://cdn.electronic.us/products/commander/mac/download/commander.dmg",
      verified: "cdn.electronic.us/"
  appcast "https://cdn.electronic.us/products/commander/mac/update/settings.xml"
  name "Commander One"
  desc "Two-panel file manager"
  homepage "https://mac.eltima.com/file-manager.html"

  depends_on macos: ">= :yosemite"

  app "Commander One.app"
end
