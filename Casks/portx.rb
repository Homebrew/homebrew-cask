cask "portx" do
  arch arm: "arm64", intel: "x64"

  version "2.1.4,10.31"
  sha256 arm:   "CF5245E85E85803478827D8951BD75C48FC425BFBB3BA5A69C95EF96A5520E3F",
         intel: "51699A4A9BAF10ED04683A348F6AB5C8527F3B02569CE5CE1A65EEAAB3718BBB"

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
