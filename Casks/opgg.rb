cask "opgg" do
  version "0.1.46"
  sha256 "d79567efd7e62e14ee4bb5f1da94a166ab779d1467807ca356f4cbb63945e6b9"

  url "https://opgg-desktop-patch.akamaized.net/OP.GG-#{version}.dmg",
      verified: "opgg-desktop-patch.akamaized.net/"
  name "OP.GG fpr Desktop"
  desc "OP.GG provides stats on games like LoL, Overwatch and PUBG"
  homepage "https//na.op.gg/desktop/"

  app "OP.GG.app"
end
