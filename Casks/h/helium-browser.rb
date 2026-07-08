cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.14.4.1"
  sha256 arm:   "38a8367bb3b18937e1b6c646ff57c785396c50e9f939b6b718fcba9bf901eea5",
         intel: "49709a0fa77b3c710d5e30f241c98bcbca48afd19c3088be30c8fdfd5e0ce718"

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
