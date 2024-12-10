cask "inkdown" do
  arch arm: "arm64", intel: "x64"

  version "1.2.2"
  sha256 arm:   "b2c0c2a688d4cccfb20cc59f5efe8cfb4c062b58f2d265c5f6de738b8353da64",
         intel: "7ccc25dec1f2995c2f2226454f3eb1419b8a57ce1574b48f23eb8e15c2ca77a9"

  url "https://github.com/1943time/inkdown/releases/download/v#{version}/inkdown-mac-#{arch}.dmg"
  name "Inkdown"
  desc "WYSIWYG Markdown editor"
  homepage "https://github.com/1943time/inkdown"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Inkdown.app"

  zap trash: [
    "~/Library/Application Support/inkdown",
    "~/Library/Preferences/inkdown.plist",
    "~/Library/Saved Application State/inkdown.savedState",
  ]
end
