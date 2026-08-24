cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.15.7.1"
  sha256 arm:   "4104f776d04a42f9c68b7c92b206957971aa28827f8b2b397c30296670e5b791",
         intel: "bd0dc29201101c23c3be5c56db8ccd56414ce363a47c72071e09af71e854d227"

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
