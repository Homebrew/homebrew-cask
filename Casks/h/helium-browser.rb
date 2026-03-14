cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.10.4.1"
  sha256 arm:   "377ddda5ade58f6e2dd3dfe0bd8fb9a5735055e3572a1699970644cf578ff55e",
         intel: "18b61cb134a582d7fce3270e29a12155d525bef3cda0dacc5ac297718afc3fef"

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
