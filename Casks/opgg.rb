cask "opgg" do
  version "1.1.8"
  sha256 "7b2dbc3297755310df90d009e84b84660bb42dd6e283010f01e2577fba75f673"

  url "https://opgg-desktop-patch.akamaized.net/OP.GG-#{version}.dmg",
      verified: "opgg-desktop-patch.akamaized.net/"
  name "OP.GG Desktop"
  desc "Game records and champion analysis"
  homepage "https://op.gg/desktop/"

  livecheck do
    url "https://desktop-app-update.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  app "OP.GG.app"

  zap trash: "~/Library/Application Support/opgg-electron-app"
end
