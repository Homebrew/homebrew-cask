cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.11.3.2"
  sha256 arm:   "9ce93a142d20e8dd565cbcd3c56ea614cbb638effd4ca46a8fe9ea78e8968bea",
         intel: "0a5d42157bf35a183e755e646e2325951a9a69f9de724cc15c96526e5d1f5b62"

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
