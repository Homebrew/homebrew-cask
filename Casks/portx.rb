cask "portx" do
  version "1.1.5,8"
  sha256 "0a6554d35f92413a7a3ecd37d037587dab4f45f8bd49483ff371825f77b9e03c"

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
