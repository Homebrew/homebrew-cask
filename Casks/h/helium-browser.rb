cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.7.4.1"
  sha256 arm:   "f441040ae6a200b53f2f3764ae396581437e707731903bcf832739da7a2e16bc",
         intel: "9d865b03b839b3e6f387d2002e16480fd950cf97999391607c076c0af8b6befc"

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
