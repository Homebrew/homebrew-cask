cask "opgg" do
  version "1.0.9"
  sha256 "83df4704372b3154accc657b07ef776c11c45348ccf0b1b80c3a163d5976f95c"

  url "https://opgg-desktop-patch.akamaized.net/OP.GG-#{version}.dmg",
      verified: "opgg-desktop-patch.akamaized.net/"
  name "OP.GG Desktop"
  desc "Game records and champion analysis"
  homepage "https://op.gg/desktop/"

  livecheck do
    url "https://desktop-app-update.s3.amazonaws.com/latest-mac.yml"
    strategy :page_match do |page|
      YAML.safe_load(page)["version"]
    end
  end

  app "OP.GG.app"

  zap trash: "~/Library/Application Support/opgg-electron-app"
end
