cask "portx" do
  version "2.0.1,10.8"
  sha256 "a980f1b4814cf03c9c58b6dd4820f4fcee3503cd9f55fc24ccb3cea4c461d362"

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
