cask "neardrop" do
  version "2.2.0"
  sha256 "ee6fed09714487789f605198c0415bfd097b61efa527dd21560e10af5c56a6a5"

  url "https://github.com/grishka/NearDrop/releases/download/v#{version}/NearDrop.app.zip"
  name "NearDrop"
  desc "Unofficial Google Nearby Share app"
  homepage "https://github.com/grishka/NearDrop"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "NearDrop.app"

  uninstall quit: "me.grishka.NearDrop"

  zap trash: [
    "~/Library/Application Support/NearDrop",
    "~/Library/Preferences/me.grishka.NearDrop.plist",
  ]
end
