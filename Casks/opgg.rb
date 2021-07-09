cask "opgg" do
  version "0.1.71"
  sha256 "4ef1fd3501a2ad805754fa0bb9b9d63e6551d10236200ee6b796ea317003e98f"

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
