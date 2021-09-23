cask "portx" do
  version "2.0.0,8"
  sha256 "c97e7e9327bcd4cd2af98838e38403d8aace0de8c626be64780fd32334bde247"

  url "https://cdn.netsarang.net/0ac7ea20/PortX-#{version.before_comma}.dmg",
      verified: "cdn.netsarang.net/"
  name "portx"
  desc "SSH Client"
  homepage "https://portx.online/en/portx/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "PortX.app"

  zap trash: [
    "~/Library/Application Support/PortX",
    "~/Library/Logs/PortX",
  ]
end
