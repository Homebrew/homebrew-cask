cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.12.4.1"
  sha256 arm:   "d1ca444b8d148d0a9499d999a84c77ed250a2751762f85fef75b7cf8843acb98",
         intel: "8932687518549519978fa9684bc2aa55f1969a728b05f012257ec037ed95546c"

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
