cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.9.4.1"
  sha256 arm:   "9a23eca6eb62350c009bcebb3b923e381640af9d8ecf32050f55073335833154",
         intel: "5f766b59c79d2b56c92885853ced8ffa12ce39aa258b489f7879fcd451d0d176"

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
