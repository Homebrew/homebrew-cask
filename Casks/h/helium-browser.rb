cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.13.6.1"
  sha256 arm:   "6126137d424c446b52b0c898366232133764c6fbe7b3a669803d6a29d2f5a746",
         intel: "7e740ff5fe20dd6f069249002ff0bed685c36f48e183b4565b10c4b425f8bd96"

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
