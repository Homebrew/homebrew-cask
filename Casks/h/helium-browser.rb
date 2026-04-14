cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.11.2.1"
  sha256 arm:   "8df8b135e3a2281ce763b9723a92c9b1cc9b83b560121adfe5a23b44137c0d62",
         intel: "882bebf72dbda1ed6f4ad2732d4b80868dc399cd3579e223c46e1d75006d127b"

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
