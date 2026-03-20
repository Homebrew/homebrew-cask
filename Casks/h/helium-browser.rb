cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.10.6.1"
  sha256 arm:   "49218ba867a8763937d43d63aff9d96a268c61715bcab9a9bd85a87453c88f61",
         intel: "855840025054966e9d31da5bf8d4731a22b35d554ebbdb39995879a5bc18310b"

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
