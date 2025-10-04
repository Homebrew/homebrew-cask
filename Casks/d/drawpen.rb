cask "drawpen" do
  arch arm: "arm64", intel: "x64"

  version "0.0.25"
  sha256 arm:   "408803e69f0312a68d252f00f2ee63293d70a6fc1c1e89cad0fdae5cc28f5c32",
         intel: "09f89c98af0688b242d754f674dadbabb5f99e847637a47db5ae4d94062f12df"

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
