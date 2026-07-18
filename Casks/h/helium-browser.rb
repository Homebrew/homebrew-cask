cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.14.7.1"
  sha256 arm:   "6702210489c34d1443929d71b99b6804864c2758abd02297d4ed87d44d794f16",
         intel: "658a056b1d630785ee61dc51da1e5d4e7374fcad1bf1a9ba9fa7b9af41497219"

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
