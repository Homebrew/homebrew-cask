cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.15.2.1"
  sha256 arm:   "fa89e86642b7edfc20d2ea4ad00d37c4698c3910b47bcfa8cde1ea37fda3fd7f",
         intel: "75fe46503056dbe4efcad1c5adaacc44b3454eb18fc175f00f716b7aaa880e56"

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
