cask "commander-one" do
  version "3.0,3368"
  sha256 :no_check

  url "https://cdn.electronic.us/products/commander/mac/download/commander.dmg",
      verified: "cdn.electronic.us/"
  name "Commander One"
  desc "Two-panel file manager"
  homepage "https://mac.eltima.com/file-manager.html"

  livecheck do
    url "https://cdn.electronic.us/products/commander/mac/update/settings.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :yosemite"

  app "Commander One.app"
end
