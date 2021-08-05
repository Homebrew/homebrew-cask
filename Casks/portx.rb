cask "portx" do
  version "1.1.5,8"
  sha256 "SOME_SHA"

  url "https://cdn.netsarang.net/0ac7ea20/PortX-1.1.5.dmg",
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
