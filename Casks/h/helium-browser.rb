cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.14.2.1"
  sha256 arm:   "dba0e93df84c9634a5b526ac7db7612ca2ab73b2d7d06db112a70b2f4f0a77dc",
         intel: "10536f17a16dc4966843259e3044ac55ce17914c7a234bb709728c88234419db"

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
