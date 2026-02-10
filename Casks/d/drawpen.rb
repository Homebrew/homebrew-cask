cask "drawpen" do
  arch arm: "arm64", intel: "x64"

  version "0.0.40"
  sha256 arm:   "f24eb1c36797e6ed079460aa3e99a3e4e6dcc2145c68acef4faf8b61216d6261",
         intel: "c5cc2debad2c42118c4da7e60189734a95a65d1ab7362b6b141d416dd16fe33e"

  url "https://github.com/DmytroVasin/DrawPen/releases/download/v#{version}/DrawPen-#{version}-#{arch}.dmg"
  name "DrawPen"
  desc "Screen annotation tool"
  homepage "https://github.com/DmytroVasin/DrawPen"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "DrawPen.app"

  zap trash: [
    "~/Library/Application Support/DrawPen",
    "~/Library/Logs/DrawPen",
    "~/Library/Preferences/*drawpen*.plist",
    "~/Library/Saved Application State/*DrawPen*.savedState",
  ]
end
