cask "tabby" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.222"
  sha256 arm:   "bb11eb8f23578f50711d1df160d2c0151ad24595dc22ed8738c596ace205965a",
         intel: "947ad46ad5792bdf719a6f61972d67c71b1658adac7fe684fcb92e84485cd5fa"

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
  depends_on macos: ">= :catalina"

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
