cask "portx" do
  version "2.1.1,10.28"
  sha256 "D2765308A6373FFBD4F29DA9EE5ECDB2276ACE4F0B6BD2F59C8E5F3A93673410"

  url "https://cdn.netsarang.net/0ac7ea20/PortX-#{version.csv.first}.dmg",
      verified: "cdn.netsarang.net/"
  name "portx"
  desc "SSH Client"
  homepage "https://portx.online/"

  livecheck do
    url "https://cdn.netsarang.net/0ac7ea20/PortX-latest.dmg"
    strategy :extract_plist
  end

  app "PortX.app"

  zap trash: [
    "~/Library/Application Support/PortX",
    "~/Library/Logs/PortX",
  ]
end
