cask "opgg" do
  version "1.1.22"
  sha256 "0d1feef9dabc79d6bab304bf7c6964e24af89e48ea980152b2610025d02488e2"

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
