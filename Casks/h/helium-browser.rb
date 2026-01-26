cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.8.3.1"
  sha256 arm:   "e4328e072530a8b21d34ed54d8e1d8e6d1e2bc0c1b63314e6983bbc1ccbf41f2",
         intel: "4f492d34c9b7539fba8d7b5a17ef782908a9d3860252defe253ddba96450eb36"

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
