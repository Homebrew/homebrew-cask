cask "inkdown" do
  arch arm: "arm64", intel: "x64"

  version "2.0.0"
  sha256 arm:   "fe485ae322989f402df67a7b8e5fd7b2a85c055e41b3b72fd5c0b70fae247f4b",
         intel: "ebeb3cd6e0e95cff89185cce41d5eca8b57064909305d500bbd26ba5b1528cd5"

  url "https://assets.inkdown.me/release/v#{version}/darwin/#{arch}/Inkdown-mac-#{arch}.dmg"
  name "Inkdown"
  desc "WYSIWYG Markdown editor"
  homepage "https://www.inkdown.me/"

  livecheck do
    url "https://www.inkdown.cn/update/0/darwin/#{arch}/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Inkdown.app"

  zap trash: [
    "~/Library/Application Support/inkdown",
    "~/Library/Preferences/inkdown.plist",
    "~/Library/Saved Application State/inkdown.savedState",
  ]
end
