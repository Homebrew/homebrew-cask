cask "drawpen" do
  arch arm: "arm64", intel: "x64"

  version "0.0.23"
  sha256 arm:   "b40dd4c547fc2fbc9da9b3c06cbfe651d760dc9c62e7a39e171a9e997131402a",
         intel: "600c81b39c849d57ae422143bf4d5a088f4f4661f2e20c7f87d34abed44327bd"

  url "https://github.com/DmytroVasin/DrawPen/releases/download/v#{version}/DrawPen-#{version}-#{arch}.dmg"
  name "DrawPen"
  desc "Screen annotation tool"
  homepage "https://github.com/DmytroVasin/DrawPen"

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "DrawPen.app"

  zap trash: [
    "~/Library/Application Support/DrawPen",
    "~/Library/Logs/DrawPen",
    "~/Library/Preferences/*drawpen*.plist",
    "~/Library/Saved Application State/*DrawPen*.savedState",
  ]
end
