cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.9.2.1"
  sha256 arm:   "0ed7c1ab4b17ff2951b029a5dd8754bd4614ab83d7e6b680b56a30c765c972a9",
         intel: "a874489071c91cc6a2294e73166247f253f21c2bffe04c9f43cabcf6d6212155"

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
