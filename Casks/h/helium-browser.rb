cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.8.2.1"
  sha256 arm:   "638d858fee4a3d9d9a3bb5dacd5d42141ee58809964ac69f717a6fba4251aa83",
         intel: "b83aec3b10a8f8503f2b7372fb272b8d20a5439826bb9d0afbd442fad77ac801"

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
