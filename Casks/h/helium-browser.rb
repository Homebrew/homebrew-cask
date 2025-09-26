cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.4.12.1"
  sha256 arm:   "b6e9ea60ce5ea96a5041f1776178bf865d8067682eba37647986c28e7ddfa1d1",
         intel: "973be99793b1479dad00666b23fe7c45d0928e49c6a5bd6f76a80cc1645af6e8"

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
