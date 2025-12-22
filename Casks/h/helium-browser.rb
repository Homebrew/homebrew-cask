cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.7.7.1"
  sha256 arm:   "8851363a281e1beb037c62a6baaa9be8b294cb1859d8972d8be8cbcde1cc2d83",
         intel: "2edc7378190409130bfaafaab5c4e58ee1683de7ee65d9353c871d0ea4869746"

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
