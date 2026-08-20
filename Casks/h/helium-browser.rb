cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.15.6.1"
  sha256 arm:   "99e7688991245c65d50d27352cfeadfda5350ebb64aad40eb471833cdf323d79",
         intel: "4e37bfe3cd3ea9db6999a28d8f235c521bebfaaf849d7fe89ad0de0131eb158e"

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
  depends_on macos: :ventura

  app "Helium.app"

  zap trash: [
    "~/Library/Application Support/net.imput.helium",
    "~/Library/Caches/net.imput.helium",
    "~/Library/HTTPStorages/net.imput.helium",
    "~/Library/Preferences/net.imput.helium.plist",
  ]
end
