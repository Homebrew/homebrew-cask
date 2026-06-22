cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.13.4.1"
  sha256 arm:   "e1c0a2750784e4dd7bb9a36e018a351579d1778b8451be4263dec64e9647edc2",
         intel: "e0ef93decf87bb4842b84c5f34e02fd53629a805f2b3cc470f0810489f85835d"

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
