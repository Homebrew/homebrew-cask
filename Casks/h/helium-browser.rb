cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.4.13.1"
  sha256 arm:   "de3e2ca2e598fb81063d2411eae5118f2aaeddb901e46f71b896ef3a4f5c65df",
         intel: "52fe4d4f420b22771cf8e8c02130e53fbc36a3ef674bee5f898159a73b1b2797"

  url "https://github.com/imputnet/helium-macos/releases/download/#{version}/helium_#{version}_#{arch}-macos.dmg",
      verified: "github.com/imputnet/helium-macos/"
  name "Helium"
  desc "Chromium-based web browser"
  homepage "https://helium.computer/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Helium.app"

  zap trash: [
    "~/Library/Application Support/net.imput.helium",
    "~/Library/Caches/net.imput.helium",
    "~/Library/HTTPStorages/net.imput.helium",
    "~/Library/Preferences/net.imput.helium.plist",
  ]
end
