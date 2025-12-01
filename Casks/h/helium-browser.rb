cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.9.1"
  sha256 arm:   "cea819359f6a282b56ee14c04ed90189d5c668e1d7638c83938b494d4ddfb59c",
         intel: "89834456be7915a94a6f1bb0079c1de8216de4237e04ef4e758154d38abc491c"

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
