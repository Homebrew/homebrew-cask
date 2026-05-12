cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.12.1.1"
  sha256 arm:   "24bce23d9d4797458ca4e80de5e96249e023c3f35086d511419bea59d41d2729",
         intel: "22d81bced53f8a1f0f7ba615255ee956984bb690da1232164a5e90c88ee05210"

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
  depends_on macos: :monterey

  app "Helium.app"

  zap trash: [
    "~/Library/Application Support/net.imput.helium",
    "~/Library/Caches/net.imput.helium",
    "~/Library/HTTPStorages/net.imput.helium",
    "~/Library/Preferences/net.imput.helium.plist",
  ]
end
