cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.10.5.1"
  sha256 arm:   "280e10cff7e1fd27e98845f59a0654d68ef3ce5aa716051088500ae4a1239aa8",
         intel: "4f7da6252cd1eb92eeedebeda31c888b9193411601a2e9d57a94c00df5f0f5df"

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
