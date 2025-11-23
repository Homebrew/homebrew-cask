cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.7.1"
  sha256 arm:   "794f80f54f5e38dbac85a4757273ad1c6c3ba9e8ec3743acc09e6177b0886e8c",
         intel: "f9f385a40f8fc180acf0c4cbeb78aae4489a91339d07576830ba501ee2ec4e90"

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
