cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.14.3.1"
  sha256 arm:   "2dff7992823debaca4abfb9fbe0abc555becca8e270d5818eb82653f25c51b0c",
         intel: "2996538786a3971d932362920c0263f8702b688bd18be6b39c335e5c46360152"

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
