cask "portx" do
  version "2.0.7,10.19"
  sha256 "db16a023d9985760bcc7e165fd49349a07baf94bbfd191aad316cc3ac6e0683a"

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
