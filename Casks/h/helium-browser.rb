cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.7.1.1"
  sha256 arm:   "85039f6c63fc38b900eee86fc335cfd039528487d8234db78b70e890fc7788e8",
         intel: "88ab7d9247775ed4778ebe753c4b94266375f3fdd775e4b13076dc59300fdf11"

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
