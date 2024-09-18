cask "tabby" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.212"
  sha256 arm:   "00543ccf5e0e4d41639dd30cd6fd2649a88fb4ca5089171d4205b0a87f17e55b",
         intel: "21eb1a6d2b6100534eb42fc253b1a4411946c91db3022d1254d95e519d9bde7d"

  url "https://github.com/Eugeny/tabby/releases/download/v#{version}/tabby-#{version}-macos-#{arch}.zip",
      verified: "github.com/Eugeny/tabby/"
  name "Tabby"
  name "Terminus"
  desc "Terminal emulator, SSH and serial client"
  homepage "https://eugeny.github.io/tabby/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Tabby.app"

  zap trash: [
    "~/Library/Application Support/tabby",
    "~/Library/Preferences/org.tabby.helper.plist",
    "~/Library/Preferences/org.tabby.plist",
    "~/Library/Saved Application State/org.tabby.savedState",
    "~/Library/Services/Open Tabby here.workflow",
    "~/Library/Services/Paste path into Tabby.workflow",
  ]
end
