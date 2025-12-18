cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.7.6.1"
  sha256 arm:   "f35ecf26fdde1d8cd85222e65b1b670553a553fe964b9435d8a2945503703808",
         intel: "81030f17fddc05fe18797cd9561b565a9478813b5e2e3cd38fe2b7b0ebb83914"

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
