cask "inkdown" do
  arch arm: "arm64", intel: "x64"

  version "2.0.1"
  sha256 arm:   "b77ba6b7baf13b356e65362dca24a05ae91dcb8350e289b983bad2e56bd23c55",
         intel: "0f66f9c716bd7f5bc2fe11514a6e363f5c9dbf43faec3b9c33b1015739d8e1b0"

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
