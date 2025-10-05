cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.5.2.1"
  sha256 arm:   "830e738885fda18499d079cc813369bdd20b86ca0ee5a17eda5fca4333e83c74",
         intel: "a65bd1135e5961f7cb0ebefb82f6e4c2f089a7831fc194c322c63a7912371aca"

  url "https://github.com/imputnet/helium-macos/releases/download/#{version}/helium_#{version}_#{arch}-macos.dmg",
      verified: "github.com/imputnet/helium-macos/"
  name "Helium"
  desc "Chromium-based web browser"
  homepage "https://helium.computer/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Helium.app"

  zap trash: [
    "~/Library/Application Support/net.imput.helium",
    "~/Library/Caches/net.imput.helium",
    "~/Library/HTTPStorages/net.imput.helium",
    "~/Library/Preferences/net.imput.helium.plist",
  ]
end
