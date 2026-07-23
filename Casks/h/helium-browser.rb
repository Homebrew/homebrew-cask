cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.14.8.1"
  sha256 arm:   "e0c87ff12dcebb46b1a8f13b77d2e26b5df13b28527678f35170f38409751bc3",
         intel: "5a2f61cfc793d124fcc51e5af03922855dbbd51945f5564386a39ed4a71e3768"

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
