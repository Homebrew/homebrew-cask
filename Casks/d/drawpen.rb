cask "drawpen" do
  arch arm: "arm64", intel: "x64"

  version "0.0.26"
  sha256 arm:   "f4cf370d7344dda3e9e1932cda235a94d717c7dfec18196742627297a59adab2",
         intel: "b84dcb3274c0682cd860cc54b33c185a4e0a6887af3a7d512d742a68e92f1ffb"

  url "https://github.com/DmytroVasin/DrawPen/releases/download/v#{version}/DrawPen-#{version}-#{arch}.dmg"
  name "DrawPen"
  desc "Screen annotation tool"
  homepage "https://github.com/DmytroVasin/DrawPen"

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
