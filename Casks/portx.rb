cask "portx" do
  version "2.0.6,10.18"
  sha256 "1bfecddcf0a209fd136069b8f4522fbeea00fd21ba59b83b9b7b9c8d2b55776c"

  url "https://cdn.netsarang.net/0ac7ea20/PortX-#{version.csv.first}.dmg",
      verified: "cdn.netsarang.net/"
  name "portx"
  desc "SSH Client"
  homepage "https://portx.online/en/portx/"

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
