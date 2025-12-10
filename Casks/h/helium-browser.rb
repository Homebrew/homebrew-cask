cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.7.3.1"
  sha256 arm:   "126202f8565f0e7336095b4162174d4d5bec084fdc7df00e6e43dc082a222b3e",
         intel: "a861d94c03c95a3f53a04373c407f2295d3dee75ef38e7c8719d97aa5d0fcbc3"

  url "https://github.com/imputnet/helium-macos/releases/download/#{version}/helium_#{version}_#{arch}-macos.dmg",
      verified: "github.com/imputnet/helium-macos/"
  name "Helium"
  desc "Chromium-based web browser"
  homepage "https://helium.computer/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Helium.app"

  zap trash: [
    "~/Library/Application Support/net.imput.helium",
    "~/Library/Caches/net.imput.helium",
    "~/Library/HTTPStorages/net.imput.helium",
    "~/Library/Preferences/net.imput.helium.plist",
  ]
end
