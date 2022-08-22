cask "portx" do
  arch arm: "arm64", intel: "x64"

  version "2.1.3,10.30"

  on_intel do
    sha256 "D03E5C1928DF7BCBE79FDC7DCB3F4CC8BF5EF2B067CB456D1C73CD166F879C2C"
  end

  on_arm do
    sha256 "0F1AE65B280B8A00CE57E917DE0D5A048509A50306CAD97042BB82713114EEA8"
  end

  url "https://cdn.netsarang.net/0ac7ea20/PortX-#{version.csv.first}-#{arch}.dmg",
      verified: "cdn.netsarang.net/"
  name "portx"
  desc "SSH Client"
  homepage "https://portx.online/"

  livecheck do
    url "https://cdn.netsarang.net/0ac7ea20/PortX-latest-#{arch}.dmg"
    strategy :extract_plist
  end

  app "PortX.app"

  zap trash: [
    "~/Library/Application Support/PortX",
    "~/Library/Logs/PortX",
  ]
end
