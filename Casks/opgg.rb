cask "opgg" do
  version "0.1.56"
  sha256 "66443deabfa15a783c95cf16887d0f5ac18f6389914c9cdbed2a5a01b9b7f26c"

  url "https://opgg-desktop-patch.akamaized.net/OP.GG-#{version}.dmg",
      verified: "opgg-desktop-patch.akamaized.net/"
  name "OP.GG Desktop"
  desc "Game records and champion analysis"
  homepage "https://op.gg/desktop/"

  livecheck do
    url "https://desktop-app-update.s3.amazonaws.com/latest-mac.yml"
    strategy :page_match
    regex(/OP\.GG-(\d+(?:\.\d+)*)\.dmg/i)
  end

  app "OP.GG.app"

  zap trash: "~/Library/Application Support/opgg-electron-app"
end
