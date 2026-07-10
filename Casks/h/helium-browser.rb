cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.14.5.1"
  sha256 arm:   "6dc1ab28a637db15527deed834f31e126567dcbc8e4e138699d69090da1c997c",
         intel: "abb2cd24eb520fc58658ff1674872ad3295d5ad0cebb84492a59743a4d548f2d"

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
