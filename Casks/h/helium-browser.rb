cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.10.2.1"
  sha256 arm:   "4df95a010960b0207e7e0a40f506e3ff9b7bc7620c1748171823f5f4c6f2c2cd",
         intel: "a3f3fcb1f1b2b45fbd6ec596821cbad95826b36ed119214b96406e48e306ee07"

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
