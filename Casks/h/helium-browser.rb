cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.15.5.1"
  sha256 arm:   "cca8c38a2ebafa3f61af4e3ec477b58ace240e1abdb57f185478cad8ff24ce5d",
         intel: "94e97e34e31cedefbb7902b156e1401819359e04e966161b042f91f8ac9338af"

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
